
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hifn_dma {int cmdu; int srcu; int dstu; int resu; int cmdk; int srck; int dstk; int resk; int resi; int dsti; int srci; int cmdi; TYPE_4__* dstr; TYPE_3__* cmdr; TYPE_2__* srcr; TYPE_1__* resr; } ;
struct hifn_device {int name; scalar_t__* sa; scalar_t__ reset; int success; scalar_t__ desc_virt; } ;
struct TYPE_8__ {int l; } ;
struct TYPE_7__ {int l; } ;
struct TYPE_6__ {int l; } ;
struct TYPE_5__ {int l; } ;


 int HIFN_D_CMD_RSIZE ;
 int HIFN_D_DST_RSIZE ;
 int HIFN_D_RES_RSIZE ;
 int HIFN_D_SRC_RSIZE ;
 int HIFN_D_VALID ;
 int __cpu_to_le32 (int ) ;
 int dprintk (char*,int ,int ,int ,int ,int ,int,int,int,int,int,int,int,int) ;
 int hifn_complete_sa (struct hifn_device*,int) ;
 int hifn_process_ready (scalar_t__,int) ;

__attribute__((used)) static void hifn_clear_rings(struct hifn_device *dev, int error)
{
 struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
 int i, u;

 dprintk("%s: ring cleanup 1: i: %d.%d.%d.%d, u: %d.%d.%d.%d, "
   "k: %d.%d.%d.%d.\n",
   dev->name,
   dma->cmdi, dma->srci, dma->dsti, dma->resi,
   dma->cmdu, dma->srcu, dma->dstu, dma->resu,
   dma->cmdk, dma->srck, dma->dstk, dma->resk);

 i = dma->resk; u = dma->resu;
 while (u != 0) {
  if (dma->resr[i].l & __cpu_to_le32(HIFN_D_VALID))
   break;

  if (dev->sa[i]) {
   dev->success++;
   dev->reset = 0;
   hifn_process_ready(dev->sa[i], error);
   hifn_complete_sa(dev, i);
  }

  if (++i == HIFN_D_RES_RSIZE)
   i = 0;
  u--;
 }
 dma->resk = i; dma->resu = u;

 i = dma->srck; u = dma->srcu;
 while (u != 0) {
  if (dma->srcr[i].l & __cpu_to_le32(HIFN_D_VALID))
   break;
  if (++i == HIFN_D_SRC_RSIZE)
   i = 0;
  u--;
 }
 dma->srck = i; dma->srcu = u;

 i = dma->cmdk; u = dma->cmdu;
 while (u != 0) {
  if (dma->cmdr[i].l & __cpu_to_le32(HIFN_D_VALID))
   break;
  if (++i == HIFN_D_CMD_RSIZE)
   i = 0;
  u--;
 }
 dma->cmdk = i; dma->cmdu = u;

 i = dma->dstk; u = dma->dstu;
 while (u != 0) {
  if (dma->dstr[i].l & __cpu_to_le32(HIFN_D_VALID))
   break;
  if (++i == HIFN_D_DST_RSIZE)
   i = 0;
  u--;
 }
 dma->dstk = i; dma->dstu = u;

 dprintk("%s: ring cleanup 2: i: %d.%d.%d.%d, u: %d.%d.%d.%d, "
   "k: %d.%d.%d.%d.\n",
   dev->name,
   dma->cmdi, dma->srci, dma->dsti, dma->resi,
   dma->cmdu, dma->srcu, dma->dstu, dma->resu,
   dma->cmdk, dma->srck, dma->dstk, dma->resk);
}
