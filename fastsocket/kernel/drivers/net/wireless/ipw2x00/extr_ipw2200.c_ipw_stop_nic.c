
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int CBD_RESET_REG_PRINCETON_RESET ;
 int IPW_ERROR (char*) ;
 int IPW_RESET_REG ;
 int IPW_RESET_REG_MASTER_DISABLED ;
 int IPW_RESET_REG_STOP_MASTER ;
 int ipw_poll_bit (struct ipw_priv*,int ,int ,int) ;
 int ipw_set_bit (struct ipw_priv*,int ,int ) ;
 int ipw_write32 (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static int ipw_stop_nic(struct ipw_priv *priv)
{
 int rc = 0;


 ipw_write32(priv, IPW_RESET_REG, IPW_RESET_REG_STOP_MASTER);

 rc = ipw_poll_bit(priv, IPW_RESET_REG,
     IPW_RESET_REG_MASTER_DISABLED, 500);
 if (rc < 0) {
  IPW_ERROR("wait for reg master disabled failed after 500ms\n");
  return rc;
 }

 ipw_set_bit(priv, IPW_RESET_REG, CBD_RESET_REG_PRINCETON_RESET);

 return rc;
}
