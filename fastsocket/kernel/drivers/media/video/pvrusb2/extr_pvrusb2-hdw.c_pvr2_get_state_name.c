
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** pvr2_state_names ;

__attribute__((used)) static const char *pvr2_get_state_name(unsigned int st)
{
 if (st < ARRAY_SIZE(pvr2_state_names)) {
  return pvr2_state_names[st];
 }
 return "???";
}
