
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_priv {scalar_t__ maint_win; TYPE_1__* maint_atmu_regs; } ;
struct rio_mport {struct rio_priv* priv; } ;
struct TYPE_2__ {int rowtar; } ;


 int out_8 (int*,int) ;
 int out_be16 (int*,int) ;
 int out_be32 (int*,int) ;
 int pr_debug (char*,int,int,int,int,int,int) ;

__attribute__((used)) static int
fsl_rio_config_write(struct rio_mport *mport, int index, u16 destid,
   u8 hopcount, u32 offset, int len, u32 val)
{
 struct rio_priv *priv = mport->priv;
 u8 *data;
 pr_debug
     ("fsl_rio_config_write: index %d destid %d hopcount %d offset %8.8x len %d val %8.8x\n",
      index, destid, hopcount, offset, len, val);
 out_be32(&priv->maint_atmu_regs->rowtar,
   (destid << 22) | (hopcount << 12) | ((offset & ~0x3) >> 9));

 data = (u8 *) priv->maint_win + offset;
 switch (len) {
 case 1:
  out_8((u8 *) data, val);
  break;
 case 2:
  out_be16((u16 *) data, val);
  break;
 default:
  out_be32((u32 *) data, val);
  break;
 }

 return 0;
}
