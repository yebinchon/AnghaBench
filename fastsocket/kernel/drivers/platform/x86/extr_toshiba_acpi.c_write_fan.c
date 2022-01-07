
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 unsigned long EFAULT ;
 unsigned long EINVAL ;
 int HCI_FAN ;
 scalar_t__ HCI_SUCCESS ;
 int force_fan ;
 int hci_write1 (int ,int,scalar_t__*) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static unsigned long write_fan(const char *buffer, unsigned long count)
{
 int value;
 u32 hci_result;

 if (sscanf(buffer, " force_on : %i", &value) == 1 &&
     value >= 0 && value <= 1) {
  hci_write1(HCI_FAN, value, &hci_result);
  if (hci_result != HCI_SUCCESS)
   return -EFAULT;
  else
   force_fan = value;
 } else {
  return -EINVAL;
 }

 return count;
}
