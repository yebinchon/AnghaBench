
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct iwl_trans_pcie {char const** command_names; } ;



__attribute__((used)) static inline const char *get_cmd_string(struct iwl_trans_pcie *trans_pcie,
      u8 cmd)
{
 if (!trans_pcie->command_names || !trans_pcie->command_names[cmd])
  return "UNKNOWN";
 return trans_pcie->command_names[cmd];
}
