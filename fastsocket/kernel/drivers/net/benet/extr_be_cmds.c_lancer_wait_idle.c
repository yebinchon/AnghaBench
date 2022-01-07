
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {scalar_t__ db; } ;


 int PHYSDEV_CONTROL_INP_MASK ;
 scalar_t__ PHYSDEV_CONTROL_OFFSET ;
 int SLIPORT_IDLE_TIMEOUT ;
 int ioread32 (scalar_t__) ;
 int ssleep (int) ;

__attribute__((used)) static int lancer_wait_idle(struct be_adapter *adapter)
{

 u32 reg_val;
 int status = 0, i;

 for (i = 0; i < 30; i++) {
  reg_val = ioread32(adapter->db + PHYSDEV_CONTROL_OFFSET);
  if ((reg_val & PHYSDEV_CONTROL_INP_MASK) == 0)
   break;

  ssleep(1);
 }

 if (i == 30)
  status = -1;

 return status;
}
