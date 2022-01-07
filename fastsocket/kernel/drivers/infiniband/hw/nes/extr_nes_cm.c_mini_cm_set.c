
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nes_cm_core {int mtu; int free_tx_pkt_max; } ;


 int EINVAL ;



__attribute__((used)) static int mini_cm_set(struct nes_cm_core *cm_core, u32 type, u32 value)
{
 int ret = 0;

 switch (type) {
 case 128:
  cm_core->mtu = value;
  break;
 case 129:
  cm_core->free_tx_pkt_max = value;
  break;
 default:

  ret = -EINVAL;
 }

 return ret;
}
