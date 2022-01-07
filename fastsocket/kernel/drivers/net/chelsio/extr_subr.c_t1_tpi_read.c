
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int tpi_lock; } ;
typedef TYPE_1__ adapter_t ;


 int __t1_tpi_read (TYPE_1__*,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int t1_tpi_read(adapter_t *adapter, u32 addr, u32 *valp)
{
 int ret;

 spin_lock(&adapter->tpi_lock);
 ret = __t1_tpi_read(adapter, addr, valp);
 spin_unlock(&adapter->tpi_lock);
 return ret;
}
