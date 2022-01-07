
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct rio_priv {TYPE_2__* msg_regs; int dbell_win; TYPE_1__* dbell_atmu_regs; } ;
struct rio_mport {int phy_type; struct rio_priv* priv; } ;
struct TYPE_4__ {int odmr; int oddatr; int oddpr; int odretcr; } ;
struct TYPE_3__ {int rowtar; } ;




 int out_be16 (int ,int) ;
 int out_be32 (int *,int) ;
 int pr_debug (char*,int,int,int) ;

__attribute__((used)) static int fsl_rio_doorbell_send(struct rio_mport *mport,
    int index, u16 destid, u16 data)
{
 struct rio_priv *priv = mport->priv;
 pr_debug("fsl_doorbell_send: index %d destid %4.4x data %4.4x\n",
   index, destid, data);
 switch (mport->phy_type) {
 case 129:
  out_be32(&priv->dbell_atmu_regs->rowtar, destid << 22);
  out_be16(priv->dbell_win, data);
  break;
 case 128:



  out_be32(&priv->msg_regs->odmr, 0x00000000);
  out_be32(&priv->msg_regs->odretcr, 0x00000004);
  out_be32(&priv->msg_regs->oddpr, destid << 16);
  out_be32(&priv->msg_regs->oddatr, data);
  out_be32(&priv->msg_regs->odmr, 0x00000001);
  break;
 }

 return 0;
}
