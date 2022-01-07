
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; } ;


 int ZFCP_STATUS_ADAPTER_MB_ACT ;
 int atomic_read (int *) ;

__attribute__((used)) static inline
int zfcp_adapter_multi_buffer_active(struct zfcp_adapter *adapter)
{
 return atomic_read(&adapter->status) & ZFCP_STATUS_ADAPTER_MB_ACT;
}
