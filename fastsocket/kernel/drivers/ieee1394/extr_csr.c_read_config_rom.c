
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int rom; } ;
struct hpsb_host {TYPE_1__ csr; } ;
typedef int quadlet_t ;


 scalar_t__ CSR1212_REGISTER_SPACE_BASE ;
 scalar_t__ CSR1212_SUCCESS ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 scalar_t__ csr1212_read (int ,scalar_t__,int *,size_t) ;

__attribute__((used)) static int read_config_rom(struct hpsb_host *host, int nodeid, quadlet_t *buffer,
      u64 addr, size_t length, u16 fl)
{
 u32 offset = addr - CSR1212_REGISTER_SPACE_BASE;

 if (csr1212_read(host->csr.rom, offset, buffer, length) == CSR1212_SUCCESS)
  return RCODE_COMPLETE;
 else
  return RCODE_ADDRESS_ERROR;
}
