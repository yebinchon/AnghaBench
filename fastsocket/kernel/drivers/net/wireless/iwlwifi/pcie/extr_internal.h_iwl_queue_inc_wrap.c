
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iwl_queue_inc_wrap(int index, int n_bd)
{
 return ++index & (n_bd - 1);
}
