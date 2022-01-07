
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
zfcp_adapter_get(struct zfcp_adapter *adapter)
{
 atomic_inc(&adapter->refcount);
}
