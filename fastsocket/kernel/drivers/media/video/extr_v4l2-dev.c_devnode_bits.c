
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long** devnode_nums ;

__attribute__((used)) static inline unsigned long *devnode_bits(int vfl_type)
{
 return devnode_nums[vfl_type];
}
