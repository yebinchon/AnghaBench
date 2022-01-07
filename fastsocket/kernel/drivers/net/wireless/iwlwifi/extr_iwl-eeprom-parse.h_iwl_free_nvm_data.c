
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_nvm_data {int dummy; } ;


 int kfree (struct iwl_nvm_data*) ;

__attribute__((used)) static inline void iwl_free_nvm_data(struct iwl_nvm_data *data)
{
 kfree(data);
}
