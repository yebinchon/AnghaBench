
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {size_t state; } ;


 char** fc_lport_state_names ;

__attribute__((used)) static const char *fc_lport_state(struct fc_lport *lport)
{
 const char *cp;

 cp = fc_lport_state_names[lport->state];
 if (!cp)
  cp = "unknown";
 return cp;
}
