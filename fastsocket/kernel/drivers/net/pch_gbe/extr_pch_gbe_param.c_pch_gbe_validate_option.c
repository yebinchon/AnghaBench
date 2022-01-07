
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nr; struct pch_gbe_opt_list* p; } ;
struct TYPE_4__ {int min; int max; } ;
struct TYPE_6__ {TYPE_2__ l; TYPE_1__ r; } ;
struct pch_gbe_option {int def; int type; int err; int name; TYPE_3__ arg; } ;
struct pch_gbe_opt_list {int i; char* str; } ;
struct pch_gbe_adapter {int dummy; } ;


 int BUG () ;


 int OPTION_UNSET ;


 int pr_debug (char*,char*,...) ;


__attribute__((used)) static int pch_gbe_validate_option(int *value,
        const struct pch_gbe_option *opt,
        struct pch_gbe_adapter *adapter)
{
 if (*value == OPTION_UNSET) {
  *value = opt->def;
  return 0;
 }

 switch (opt->type) {
 case 130:
  switch (*value) {
  case 131:
   pr_debug("%s Enabled\n", opt->name);
   return 0;
  case 132:
   pr_debug("%s Disabled\n", opt->name);
   return 0;
  }
  break;
 case 128:
  if (*value >= opt->arg.r.min && *value <= opt->arg.r.max) {
   pr_debug("%s set to %i\n", opt->name, *value);
   return 0;
  }
  break;
 case 129: {
  int i;
  const struct pch_gbe_opt_list *ent;

  for (i = 0; i < opt->arg.l.nr; i++) {
   ent = &opt->arg.l.p[i];
   if (*value == ent->i) {
    if (ent->str[0] != '\0')
     pr_debug("%s\n", ent->str);
    return 0;
   }
  }
 }
  break;
 default:
  BUG();
 }

 pr_debug("Invalid %s value specified (%i) %s\n",
   opt->name, *value, opt->err);
 *value = opt->def;
 return -1;
}
