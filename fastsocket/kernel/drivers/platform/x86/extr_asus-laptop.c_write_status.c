
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int acpi_handle ;
struct TYPE_2__ {int status; } ;





 int gps_off_handle ;
 int gps_on_handle ;
 TYPE_1__* hotk ;
 int pr_warning (char*,int) ;
 scalar_t__ write_acpi_int (int ,int *,int,int *) ;

__attribute__((used)) static void write_status(acpi_handle handle, int out, int mask)
{
 hotk->status = (out) ? (hotk->status | mask) : (hotk->status & ~mask);

 switch (mask) {
 case 128:
  out = !(out & 0x1);
  break;
 case 130:
  out = (out & 0x1) + 1;
  break;
 case 129:
  handle = (out) ? gps_on_handle : gps_off_handle;
  out = 0x02;
  break;
 default:
  out &= 0x1;
  break;
 }

 if (write_acpi_int(handle, ((void*)0), out, ((void*)0)))
  pr_warning(" write failed %x\n", mask);
}
