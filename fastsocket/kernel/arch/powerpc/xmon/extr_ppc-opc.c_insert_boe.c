
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int valid_bo (long,int) ;

__attribute__((used)) static unsigned long
insert_boe (unsigned long insn,
     long value,
     int dialect,
     const char **errmsg)
{
  if (!valid_bo (value, dialect))
    *errmsg = _("invalid conditional option");
  else if ((value & 1) != 0)
    *errmsg = _("attempt to set y bit when using + or - modifier");

  return insn | ((value & 0x1f) << 21);
}
