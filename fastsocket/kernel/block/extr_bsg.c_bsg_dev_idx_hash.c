
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int BSG_LIST_ARRAY_SIZE ;
 struct hlist_head* bsg_device_list ;

__attribute__((used)) static inline struct hlist_head *bsg_dev_idx_hash(int index)
{
 return &bsg_device_list[index & (BSG_LIST_ARRAY_SIZE - 1)];
}
