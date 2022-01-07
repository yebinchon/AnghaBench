
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnx4008_dma_ch_config {int halt; int active; int lock; int itc; int ie; int flow_cntrl; int dest_per; int src_per; } ;


 int EINVAL ;
int pnx4008_dma_pack_config(const struct pnx4008_dma_ch_config * ch_cfg,
       unsigned long *cfg)
{
 int err = 0;

 if (!cfg || !ch_cfg) {
  err = -EINVAL;
  goto out;
 }

 *cfg = 0;

 switch (ch_cfg->halt) {
 case 0:
  break;
 case 1:
  *cfg |= (1 << 18);
  break;

 default:
  err = -EINVAL;
  goto out;
 }
 switch (ch_cfg->active) {
 case 0:
  break;
 case 1:
  *cfg |= (1 << 17);
  break;

 default:
  err = -EINVAL;
  goto out;
 }
 switch (ch_cfg->lock) {
 case 0:
  break;
 case 1:
  *cfg |= (1 << 16);
  break;

 default:
  err = -EINVAL;
  goto out;
 }
 switch (ch_cfg->itc) {
 case 0:
  break;
 case 1:
  *cfg |= (1 << 15);
  break;

 default:
  err = -EINVAL;
  goto out;
 }
 switch (ch_cfg->ie) {
 case 0:
  break;
 case 1:
  *cfg |= (1 << 14);
  break;

 default:
  err = -EINVAL;
  goto out;
 }
 switch (ch_cfg->flow_cntrl) {
 case 135:
  *cfg &= ~(7 << 11);
  break;
 case 134:
  *cfg &= ~(7 << 11);
  *cfg |= (1 << 11);
  break;
 case 132:
  *cfg &= ~(7 << 11);
  *cfg |= (2 << 11);
  break;
 case 130:
  *cfg &= ~(7 << 11);
  *cfg |= (3 << 11);
  break;
 case 129:
  *cfg &= ~(7 << 11);
  *cfg |= (4 << 11);
  break;
 case 133:
  *cfg &= ~(7 << 11);
  *cfg |= (5 << 11);
  break;
 case 131:
  *cfg &= ~(7 << 11);
  *cfg |= (6 << 11);
  break;
 case 128:
  *cfg |= (7 << 11);
  break;

 default:
  err = -EINVAL;
  goto out;
 }
 *cfg &= ~(0x1f << 6);
 *cfg |= ((ch_cfg->dest_per & 0x1f) << 6);

 *cfg &= ~(0x1f << 1);
 *cfg |= ((ch_cfg->src_per & 0x1f) << 1);

out:
 return err;
}
