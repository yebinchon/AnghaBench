
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct bcm3510_state {int dummy; } ;
struct TYPE_3__ {int MADRH_a9; int MADRL_aa; int MDATA_ab; } ;
typedef TYPE_1__ bcm3510_register_value ;


 int bcm3510_writeB (struct bcm3510_state*,int,TYPE_1__) ;

__attribute__((used)) static int bcm3510_write_ram(struct bcm3510_state *st, u16 addr, const u8 *b,
        u16 len)
{
 int ret = 0,i;
 bcm3510_register_value vH, vL,vD;

 vH.MADRH_a9 = addr >> 8;
 vL.MADRL_aa = addr;
 if ((ret = bcm3510_writeB(st,0xa9,vH)) < 0) return ret;
 if ((ret = bcm3510_writeB(st,0xaa,vL)) < 0) return ret;

 for (i = 0; i < len; i++) {
  vD.MDATA_ab = b[i];
  if ((ret = bcm3510_writeB(st,0xab,vD)) < 0)
   return ret;
 }

 return 0;
}
