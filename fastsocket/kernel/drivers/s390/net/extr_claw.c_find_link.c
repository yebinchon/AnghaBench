
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct claw_privbk* ml_priv; } ;
struct claw_privbk {struct claw_env* p_env; } ;
struct claw_env {int packing; int api_type; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;

 int EINVAL ;
 int HOST_APPL_NAME ;


 int WS_APPL_NAME_IP_NAME ;
 int WS_APPL_NAME_PACKED ;
 int memcmp (int ,char*,int) ;
 int setup ;

__attribute__((used)) static int
find_link(struct net_device *dev, char *host_name, char *ws_name )
{
 struct claw_privbk *privptr;
 struct claw_env *p_env;
 int rc=0;

 CLAW_DBF_TEXT(2, setup, "findlink");
 privptr = dev->ml_priv;
        p_env=privptr->p_env;
 switch (p_env->packing)
 {
  case 129:
   if ((memcmp(WS_APPL_NAME_PACKED, host_name, 8)!=0) ||
       (memcmp(WS_APPL_NAME_PACKED, ws_name, 8)!=0 ))
                      rc = EINVAL;
   break;
  case 130:
  case 128:
   if ((memcmp(WS_APPL_NAME_IP_NAME, host_name, 8)!=0) ||
       (memcmp(WS_APPL_NAME_IP_NAME, ws_name, 8)!=0 ))
                  rc = EINVAL;
   break;
  default:
          if ((memcmp(HOST_APPL_NAME, host_name, 8)!=0) ||
           (memcmp(p_env->api_type , ws_name, 8)!=0))
                  rc = EINVAL;
   break;
 }

 return rc;
}
