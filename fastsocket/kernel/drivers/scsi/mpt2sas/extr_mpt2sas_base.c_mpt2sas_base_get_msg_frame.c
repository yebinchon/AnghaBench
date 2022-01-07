
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct MPT2SAS_ADAPTER {int request_sz; scalar_t__ request; } ;



void *
mpt2sas_base_get_msg_frame(struct MPT2SAS_ADAPTER *ioc, u16 smid)
{
 return (void *)(ioc->request + (smid * ioc->request_sz));
}
