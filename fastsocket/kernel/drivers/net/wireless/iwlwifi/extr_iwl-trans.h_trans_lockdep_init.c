
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct iwl_trans {int sync_cmd_lockdep_map; } ;


 int lockdep_init_map (int *,char*,struct lock_class_key*,int ) ;

__attribute__((used)) static inline void trans_lockdep_init(struct iwl_trans *trans)
{






}
