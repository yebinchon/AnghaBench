
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {int cmd_privileges; } ;



__attribute__((used)) static inline bool check_privilege(struct be_adapter *adapter, u32 flags)
{
 return flags & adapter->cmd_privileges ? 1 : 0;
}
