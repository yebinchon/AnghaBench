
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int IPW_DEBUG_INFO (char*,int) ;
 int IPW_DEBUG_TRACE (char*) ;
 int IPW_ERROR (char*) ;
 int IPW_RESET_REG ;
 int IPW_RESET_REG_MASTER_DISABLED ;
 int IPW_RESET_REG_STOP_MASTER ;
 int ipw_poll_bit (struct ipw_priv*,int ,int ,int) ;
 int ipw_set_bit (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static int ipw_stop_master(struct ipw_priv *priv)
{
 int rc;

 IPW_DEBUG_TRACE(">>\n");

 ipw_set_bit(priv, IPW_RESET_REG, IPW_RESET_REG_STOP_MASTER);


 rc = ipw_poll_bit(priv, IPW_RESET_REG,
     IPW_RESET_REG_MASTER_DISABLED, 100);
 if (rc < 0) {
  IPW_ERROR("wait for stop master failed after 100ms\n");
  return -1;
 }

 IPW_DEBUG_INFO("stop master %dms\n", rc);

 return rc;
}
