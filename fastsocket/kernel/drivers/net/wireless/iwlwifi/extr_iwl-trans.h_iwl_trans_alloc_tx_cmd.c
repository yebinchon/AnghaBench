
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_trans {int dev_cmd_headroom; int dev_cmd_pool; } ;
struct iwl_device_cmd {int dummy; } ;


 int GFP_ATOMIC ;
 int * kmem_cache_alloc (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline struct iwl_device_cmd *
iwl_trans_alloc_tx_cmd(struct iwl_trans *trans)
{
 u8 *dev_cmd_ptr = kmem_cache_alloc(trans->dev_cmd_pool, GFP_ATOMIC);

 if (unlikely(dev_cmd_ptr == ((void*)0)))
  return ((void*)0);

 return (struct iwl_device_cmd *)
   (dev_cmd_ptr + trans->dev_cmd_headroom);
}
