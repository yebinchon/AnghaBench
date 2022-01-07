
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int status; int net_dev; } ;


 int EIO ;
 int IPW_AUX_HOST_RESET_REG_MASTER_DISABLED ;
 int IPW_AUX_HOST_RESET_REG_STOP_MASTER ;
 int IPW_AUX_HOST_RESET_REG_SW_RESET ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_REG_RESET_REG ;
 int IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY ;
 int STATUS_ASSOCIATED ;
 int STATUS_ASSOCIATING ;
 int STATUS_ENABLED ;
 int STATUS_RESET_PENDING ;
 int STATUS_RUNNING ;
 int ipw2100_hw_set_gpio (struct ipw2100_priv*) ;
 int ipw2100_reset_fatalerror (struct ipw2100_priv*) ;
 int read_register (int ,int ,int*) ;
 int udelay (int ) ;
 int write_register (int ,int ,int ) ;

__attribute__((used)) static int ipw2100_power_cycle_adapter(struct ipw2100_priv *priv)
{
 u32 reg;
 int i;

 IPW_DEBUG_INFO("Power cycling the hardware.\n");

 ipw2100_hw_set_gpio(priv);


 write_register(priv->net_dev, IPW_REG_RESET_REG,
         IPW_AUX_HOST_RESET_REG_STOP_MASTER);



 i = 5;
 do {
  udelay(IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY);
  read_register(priv->net_dev, IPW_REG_RESET_REG, &reg);

  if (reg & IPW_AUX_HOST_RESET_REG_MASTER_DISABLED)
   break;
 } while (--i);

 priv->status &= ~STATUS_RESET_PENDING;

 if (!i) {
  IPW_DEBUG_INFO
      ("exit - waited too long for master assert stop\n");
  return -EIO;
 }

 write_register(priv->net_dev, IPW_REG_RESET_REG,
         IPW_AUX_HOST_RESET_REG_SW_RESET);


 ipw2100_reset_fatalerror(priv);


 priv->status &= ~(STATUS_RUNNING | STATUS_ASSOCIATING |
     STATUS_ASSOCIATED | STATUS_ENABLED);

 return 0;
}
