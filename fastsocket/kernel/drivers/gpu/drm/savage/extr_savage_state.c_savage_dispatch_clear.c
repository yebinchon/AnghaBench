
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct drm_clip_rect {unsigned int x1; unsigned int y1; unsigned int x2; unsigned int y2; } ;
struct TYPE_10__ {int front_offset; int front_bd; int back_offset; int back_bd; int depth_offset; int depth_bd; } ;
typedef TYPE_3__ drm_savage_private_t ;
struct TYPE_9__ {int mask; int value; } ;
struct TYPE_8__ {unsigned int flags; } ;
struct TYPE_11__ {TYPE_2__ clear1; TYPE_1__ clear0; } ;
typedef TYPE_4__ drm_savage_cmd_header_t ;


 unsigned int BCI_CMD_DEST_PBD_NEW ;
 unsigned int BCI_CMD_RECT ;
 unsigned int BCI_CMD_RECT_XP ;
 unsigned int BCI_CMD_RECT_YP ;
 unsigned int BCI_CMD_SEND_COLOR ;
 int BCI_CMD_SET_ROP (unsigned int,int) ;
 int BCI_W_H (unsigned int,unsigned int) ;
 int BCI_X_Y (unsigned int,unsigned int) ;
 int BEGIN_DMA (int) ;
 int DMA_COMMIT () ;
 int DMA_LOCALS ;
 int DMA_SET_REGISTERS (int ,int) ;
 int DMA_WRITE (int) ;

 int SAVAGE_BITPLANEWTMASK ;



__attribute__((used)) static int savage_dispatch_clear(drm_savage_private_t * dev_priv,
     const drm_savage_cmd_header_t * cmd_header,
     const drm_savage_cmd_header_t *data,
     unsigned int nbox,
     const struct drm_clip_rect *boxes)
{
 unsigned int flags = cmd_header->clear0.flags;
 unsigned int clear_cmd;
 unsigned int i, nbufs;
 DMA_LOCALS;

 if (nbox == 0)
  return 0;

 clear_cmd = BCI_CMD_RECT | BCI_CMD_RECT_XP | BCI_CMD_RECT_YP |
     BCI_CMD_SEND_COLOR | BCI_CMD_DEST_PBD_NEW;
 BCI_CMD_SET_ROP(clear_cmd, 0xCC);

 nbufs = ((flags & 128) ? 1 : 0) +
     ((flags & 130) ? 1 : 0) + ((flags & 129) ? 1 : 0);
 if (nbufs == 0)
  return 0;

 if (data->clear1.mask != 0xffffffff) {

  BEGIN_DMA(2);
  DMA_SET_REGISTERS(SAVAGE_BITPLANEWTMASK, 1);
  DMA_WRITE(data->clear1.mask);
  DMA_COMMIT();
 }
 for (i = 0; i < nbox; ++i) {
  unsigned int x, y, w, h;
  unsigned int buf;
  x = boxes[i].x1, y = boxes[i].y1;
  w = boxes[i].x2 - boxes[i].x1;
  h = boxes[i].y2 - boxes[i].y1;
  BEGIN_DMA(nbufs * 6);
  for (buf = 128; buf <= 129; buf <<= 1) {
   if (!(flags & buf))
    continue;
   DMA_WRITE(clear_cmd);
   switch (buf) {
   case 128:
    DMA_WRITE(dev_priv->front_offset);
    DMA_WRITE(dev_priv->front_bd);
    break;
   case 130:
    DMA_WRITE(dev_priv->back_offset);
    DMA_WRITE(dev_priv->back_bd);
    break;
   case 129:
    DMA_WRITE(dev_priv->depth_offset);
    DMA_WRITE(dev_priv->depth_bd);
    break;
   }
   DMA_WRITE(data->clear1.value);
   DMA_WRITE(BCI_X_Y(x, y));
   DMA_WRITE(BCI_W_H(w, h));
  }
  DMA_COMMIT();
 }
 if (data->clear1.mask != 0xffffffff) {

  BEGIN_DMA(2);
  DMA_SET_REGISTERS(SAVAGE_BITPLANEWTMASK, 1);
  DMA_WRITE(0xffffffff);
  DMA_COMMIT();
 }

 return 0;
}
