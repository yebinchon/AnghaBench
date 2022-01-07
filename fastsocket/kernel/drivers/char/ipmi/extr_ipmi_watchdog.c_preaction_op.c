
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int WDOG_PRETIMEOUT_MSG_INT ;
 int WDOG_PRETIMEOUT_NMI ;
 int WDOG_PRETIMEOUT_NONE ;
 int WDOG_PRETIMEOUT_SMI ;
 char* preaction ;
 int preaction_val ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int preaction_op(const char *inval, char *outval)
{
 if (outval)
  strcpy(outval, preaction);

 if (!inval)
  return 0;

 if (strcmp(inval, "pre_none") == 0)
  preaction_val = WDOG_PRETIMEOUT_NONE;
 else if (strcmp(inval, "pre_smi") == 0)
  preaction_val = WDOG_PRETIMEOUT_SMI;




 else if (strcmp(inval, "pre_int") == 0)
  preaction_val = WDOG_PRETIMEOUT_MSG_INT;
 else
  return -EINVAL;
 strcpy(preaction, inval);
 return 0;
}
