
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_nvm_access_cmd {void* type; void* length; void* offset; } ;


 void* cpu_to_le16 (int ) ;

__attribute__((used)) static inline void iwl_nvm_fill_read(struct iwl_nvm_access_cmd *cmd,
         u16 offset, u16 length, u16 section)
{
 cmd->offset = cpu_to_le16(offset);
 cmd->length = cpu_to_le16(length);
 cmd->type = cpu_to_le16(section);
}
