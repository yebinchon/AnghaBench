
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {scalar_t__ db; } ;


 scalar_t__ SLIPORT_ERROR1_OFFSET ;
 scalar_t__ SLIPORT_ERROR2_OFFSET ;
 int SLIPORT_ERROR_NO_RESOURCE1 ;
 int SLIPORT_ERROR_NO_RESOURCE2 ;
 int SLIPORT_STATUS_ERR_MASK ;
 scalar_t__ SLIPORT_STATUS_OFFSET ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static bool lancer_provisioning_error(struct be_adapter *adapter)
{
 u32 sliport_status = 0, sliport_err1 = 0, sliport_err2 = 0;
 sliport_status = ioread32(adapter->db + SLIPORT_STATUS_OFFSET);
 if (sliport_status & SLIPORT_STATUS_ERR_MASK) {
  sliport_err1 = ioread32(adapter->db +
     SLIPORT_ERROR1_OFFSET);
  sliport_err2 = ioread32(adapter->db +
     SLIPORT_ERROR2_OFFSET);

  if (sliport_err1 == SLIPORT_ERROR_NO_RESOURCE1 &&
      sliport_err2 == SLIPORT_ERROR_NO_RESOURCE2)
   return 1;
 }
 return 0;
}
