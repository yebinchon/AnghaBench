
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int cmd_reg_cache; int cmd_reg_cache_int; } ;



__attribute__((used)) static inline void ks_save_cmd_reg(struct ks_net *ks)
{



 ks->cmd_reg_cache_int = ks->cmd_reg_cache;
}
