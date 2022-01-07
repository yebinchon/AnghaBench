
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int WDOG_TIMEOUT_NONE ;
 int WDOG_TIMEOUT_POWER_CYCLE ;
 int WDOG_TIMEOUT_POWER_DOWN ;
 int WDOG_TIMEOUT_RESET ;
 char* action ;
 int action_val ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int action_op(const char *inval, char *outval)
{
 if (outval)
  strcpy(outval, action);

 if (!inval)
  return 0;

 if (strcmp(inval, "reset") == 0)
  action_val = WDOG_TIMEOUT_RESET;
 else if (strcmp(inval, "none") == 0)
  action_val = WDOG_TIMEOUT_NONE;
 else if (strcmp(inval, "power_cycle") == 0)
  action_val = WDOG_TIMEOUT_POWER_CYCLE;
 else if (strcmp(inval, "power_off") == 0)
  action_val = WDOG_TIMEOUT_POWER_DOWN;
 else
  return -EINVAL;
 strcpy(action, inval);
 return 0;
}
