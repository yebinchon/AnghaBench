
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct MPT2SAS_ADAPTER {void* reply; scalar_t__ reply_dma; } ;



void *
mpt2sas_base_get_reply_virt_addr(struct MPT2SAS_ADAPTER *ioc, u32 phys_addr)
{
 if (!phys_addr)
  return ((void*)0);
 return ioc->reply + (phys_addr - (u32)ioc->reply_dma);
}
