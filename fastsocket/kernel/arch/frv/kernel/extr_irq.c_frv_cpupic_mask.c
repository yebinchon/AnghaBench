
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_MASK (unsigned int) ;

__attribute__((used)) static void frv_cpupic_mask(unsigned int irqlevel)
{
 __set_MASK(irqlevel);
}
