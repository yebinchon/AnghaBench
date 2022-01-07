
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int arg; } ;
typedef int (* action_fn ) (char*,int *) ;


 int IPMI_SET_TIMEOUT_HB_IF_NECESSARY ;
 int check_parms () ;
 int ipmi_set_timeout (int ) ;
 int strncpy (char*,char const*,int) ;
 char* strstrip (char*) ;
 scalar_t__ watchdog_user ;

__attribute__((used)) static int set_param_str(const char *val, struct kernel_param *kp)
{
 action_fn fn = (action_fn) kp->arg;
 int rv = 0;
 char valcp[16];
 char *s;

 strncpy(valcp, val, 16);
 valcp[15] = '\0';

 s = strstrip(valcp);

 rv = fn(s, ((void*)0));
 if (rv)
  goto out;

 check_parms();
 if (watchdog_user)
  rv = ipmi_set_timeout(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);

 out:
 return rv;
}
