
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int QLA8XXX_ADDR_DDR_NET ;
 int QLA8XXX_ADDR_DDR_NET_MAX ;
 int QLA8XXX_ADDR_IN_RANGE (unsigned long long,int ,int ) ;

__attribute__((used)) static unsigned long
qla4_82xx_pci_mem_bound_check(struct scsi_qla_host *ha,
  unsigned long long addr, int size)
{
 if (!QLA8XXX_ADDR_IN_RANGE(addr, QLA8XXX_ADDR_DDR_NET,
     QLA8XXX_ADDR_DDR_NET_MAX) ||
     !QLA8XXX_ADDR_IN_RANGE(addr + size - 1,
     QLA8XXX_ADDR_DDR_NET, QLA8XXX_ADDR_DDR_NET_MAX) ||
     ((size != 1) && (size != 2) && (size != 4) && (size != 8))) {
  return 0;
 }
 return 1;
}
