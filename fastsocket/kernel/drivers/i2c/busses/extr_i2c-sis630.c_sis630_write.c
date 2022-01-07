
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ acpi_base ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void sis630_write(u8 reg, u8 data)
{
 outb(data, acpi_base + reg);
}
