
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct desc_ptr {unsigned long address; int size; } ;



__attribute__((used)) static void set_idt(void *newidt, u16 limit)
{
 struct desc_ptr curidt;


 curidt.size = limit;
 curidt.address = (unsigned long)newidt;

 __asm__ __volatile__ (
  "lidtq %0\n"
  : : "m" (curidt)
  );
}
