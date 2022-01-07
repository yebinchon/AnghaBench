
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int remove_wq; int refcount; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
zfcp_adapter_put(struct zfcp_adapter *adapter)
{
 if (atomic_dec_return(&adapter->refcount) == 0)
  wake_up(&adapter->remove_wq);
}
