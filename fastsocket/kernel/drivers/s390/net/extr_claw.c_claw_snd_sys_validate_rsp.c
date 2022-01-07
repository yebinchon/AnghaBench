
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct claw_privbk* ml_priv; } ;
struct clawctl {int correlator; int linkid; } ;
struct claw_privbk {struct claw_env* p_env; } ;
struct claw_env {int adapter_name; int host_name; } ;
typedef int __u32 ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int SYSTEM_VALIDATE_RESPONSE ;
 int claw_send_control (struct net_device*,int ,int ,int ,int ,int ,int ) ;
 int setup ;

__attribute__((used)) static int
claw_snd_sys_validate_rsp(struct net_device *dev,
 struct clawctl *p_ctl, __u32 return_code)
{
        struct claw_env * p_env;
        struct claw_privbk *privptr;
        int rc;

 CLAW_DBF_TEXT(2, setup, "chkresp");
 privptr = dev->ml_priv;
        p_env=privptr->p_env;
        rc=claw_send_control(dev, SYSTEM_VALIDATE_RESPONSE,
  p_ctl->linkid,
  p_ctl->correlator,
                return_code,
  p_env->host_name,
  p_env->adapter_name );
        return rc;
}
