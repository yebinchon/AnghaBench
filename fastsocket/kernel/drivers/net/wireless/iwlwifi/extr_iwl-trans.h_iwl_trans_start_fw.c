
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* ops; int rx_mpdu_cmd; } ;
struct fw_img {int dummy; } ;
struct TYPE_2__ {int (* start_fw ) (struct iwl_trans*,struct fw_img const*,int) ;} ;


 int WARN_ON_ONCE (int) ;
 int might_sleep () ;
 int stub1 (struct iwl_trans*,struct fw_img const*,int) ;

__attribute__((used)) static inline int iwl_trans_start_fw(struct iwl_trans *trans,
         const struct fw_img *fw,
         bool run_in_rfkill)
{
 might_sleep();

 WARN_ON_ONCE(!trans->rx_mpdu_cmd);

 return trans->ops->start_fw(trans, fw, run_in_rfkill);
}
