
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_io_address ;


 int AE_OK ;
 int BUG () ;
 int outb (int,int ) ;
 int outl (int,int ) ;
 int outw (int,int ) ;

acpi_status acpi_os_write_port(acpi_io_address port, u32 value, u32 width)
{
 if (width <= 8) {
  outb(value, port);
 } else if (width <= 16) {
  outw(value, port);
 } else if (width <= 32) {
  outl(value, port);
 } else {
  BUG();
 }

 return AE_OK;
}
