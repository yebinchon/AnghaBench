
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned long avr32_pm_offset(void *symbol)
{
 extern u8 pm_exception[];

 return (unsigned long)symbol - (unsigned long)pm_exception;
}
