
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 char** iwl_dvm_cmd_strings ;

__attribute__((used)) static inline const char *iwl_dvm_get_cmd_string(u8 cmd)
{
 const char *s = iwl_dvm_cmd_strings[cmd];
 if (s)
  return s;
 return "UNKNOWN";
}
