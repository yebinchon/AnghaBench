
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int kled_set_handle ;
 int pr_warning (char*) ;
 scalar_t__ write_acpi_int (int ,int *,int,int *) ;

__attribute__((used)) static int set_kled_lvl(int kblv)
{
 if (kblv > 0)
  kblv = (1 << 7) | (kblv & 0x7F);
 else
  kblv = 0;

 if (write_acpi_int(kled_set_handle, ((void*)0), kblv, ((void*)0))) {
  pr_warning("Keyboard LED display write failed\n");
  return -EINVAL;
 }
 return 0;
}
