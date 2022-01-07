
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {scalar_t__ db; } ;


 int SLIPORT_STATUS_DIP_MASK ;
 scalar_t__ SLIPORT_STATUS_OFFSET ;
 int ioread32 (scalar_t__) ;

bool dump_present(struct be_adapter *adapter)
{
 u32 sliport_status = 0;

 sliport_status = ioread32(adapter->db + SLIPORT_STATUS_OFFSET);
 return !!(sliport_status & SLIPORT_STATUS_DIP_MASK);
}
