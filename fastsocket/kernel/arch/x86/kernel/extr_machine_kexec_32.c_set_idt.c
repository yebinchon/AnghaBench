
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_ptr {unsigned long address; int size; } ;
typedef int __u16 ;


 int load_idt (struct desc_ptr*) ;

__attribute__((used)) static void set_idt(void *newidt, __u16 limit)
{
 struct desc_ptr curidt;


 curidt.size = limit;
 curidt.address = (unsigned long)newidt;

 load_idt(&curidt);
}
