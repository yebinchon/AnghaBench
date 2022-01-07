
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *pm_verb(int event)
{
 switch (event) {
 case 129:
  return "suspend";
 case 130:
  return "resume";
 case 135:
  return "freeze";
 case 133:
  return "quiesce";
 case 134:
  return "hibernate";
 case 128:
  return "thaw";
 case 131:
  return "restore";
 case 132:
  return "recover";
 default:
  return "(unknown PM event)";
 }
}
