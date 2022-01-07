
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_LEGACY_VGA_IOPORT (unsigned long) ;
 int IS_RUNNING_ON_SIMULATOR () ;
 scalar_t__ SN_ACPI_BASE_SUPPORT () ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 void* __ia64_mk_io_addr (unsigned long) ;
 scalar_t__ is_shub2 () ;

void *sn_io_addr(unsigned long port)
{
 if (!IS_RUNNING_ON_SIMULATOR()) {
  if (IS_LEGACY_VGA_IOPORT(port))
   return (__ia64_mk_io_addr(port));

  if (port < (64 * 1024))
   return ((void*)0);
  if (SN_ACPI_BASE_SUPPORT())
   return (__ia64_mk_io_addr(port));
  else
   return ((void *)(port | __IA64_UNCACHED_OFFSET));
 } else {

  unsigned long addr;






  addr = (is_shub2() ? 0xc00000028c000000UL : 0xc0000087cc000000UL) | ((port >> 2) << 12);
  if ((port >= 0x1f0 && port <= 0x1f7) || port == 0x3f6 || port == 0x3f7)
   addr |= port;
  return (void *)addr;
 }
}
