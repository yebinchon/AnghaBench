
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_clip_rect {scalar_t__ y1; scalar_t__ y2; scalar_t__ x1; scalar_t__ x2; } ;
struct TYPE_3__ {unsigned int back_offset; unsigned int back_bd; } ;
typedef TYPE_1__ drm_savage_private_t ;


 unsigned int BCI_CMD_DEST_GBD ;
 unsigned int BCI_CMD_RECT ;
 unsigned int BCI_CMD_RECT_XP ;
 unsigned int BCI_CMD_RECT_YP ;
 int BCI_CMD_SET_ROP (unsigned int,int) ;
 unsigned int BCI_CMD_SRC_PBD_COLOR_NEW ;
 unsigned int BCI_W_H (scalar_t__,scalar_t__) ;
 unsigned int BCI_X_Y (scalar_t__,scalar_t__) ;
 int BEGIN_DMA (int) ;
 int DMA_COMMIT () ;
 int DMA_LOCALS ;
 int DMA_WRITE (unsigned int) ;

__attribute__((used)) static int savage_dispatch_swap(drm_savage_private_t * dev_priv,
    unsigned int nbox, const struct drm_clip_rect *boxes)
{
 unsigned int swap_cmd;
 unsigned int i;
 DMA_LOCALS;

 if (nbox == 0)
  return 0;

 swap_cmd = BCI_CMD_RECT | BCI_CMD_RECT_XP | BCI_CMD_RECT_YP |
     BCI_CMD_SRC_PBD_COLOR_NEW | BCI_CMD_DEST_GBD;
 BCI_CMD_SET_ROP(swap_cmd, 0xCC);

 for (i = 0; i < nbox; ++i) {
  BEGIN_DMA(6);
  DMA_WRITE(swap_cmd);
  DMA_WRITE(dev_priv->back_offset);
  DMA_WRITE(dev_priv->back_bd);
  DMA_WRITE(BCI_X_Y(boxes[i].x1, boxes[i].y1));
  DMA_WRITE(BCI_X_Y(boxes[i].x1, boxes[i].y1));
  DMA_WRITE(BCI_W_H(boxes[i].x2 - boxes[i].x1,
      boxes[i].y2 - boxes[i].y1));
  DMA_COMMIT();
 }

 return 0;
}
