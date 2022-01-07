
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_host {int dummy; } ;


 int csr_highlevel ;
 int hpsb_unregister_addrspace (int *,struct hpsb_host*,int ) ;

__attribute__((used)) static void release_addr_range(u64 addr, void *__host)
{
  struct hpsb_host *host = (struct hpsb_host*)__host;
 hpsb_unregister_addrspace(&csr_highlevel, host, addr);
}
