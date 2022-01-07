
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;


 int BUG () ;




__attribute__((used)) static int ni_tio_second_gate_registers_present(const struct ni_gpct_device
      *counter_dev)
{
 switch (counter_dev->variant) {
 case 129:
  return 0;
  break;
 case 128:
 case 130:
  return 1;
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
