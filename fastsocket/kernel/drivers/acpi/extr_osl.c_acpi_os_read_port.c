
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int acpi_status ;
typedef int acpi_io_address ;


 int AE_OK ;
 int BUG () ;
 int inb (int ) ;
 int inl (int ) ;
 int inw (int ) ;

acpi_status acpi_os_read_port(acpi_io_address port, u32 * value, u32 width)
{
 u32 dummy;

 if (!value)
  value = &dummy;

 *value = 0;
 if (width <= 8) {
  *(u8 *) value = inb(port);
 } else if (width <= 16) {
  *(u16 *) value = inw(port);
 } else if (width <= 32) {
  *(u32 *) value = inl(port);
 } else {
  BUG();
 }

 return AE_OK;
}
