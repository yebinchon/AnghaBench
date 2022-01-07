
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clr_IRL () ;
 int __clr_RC (unsigned int) ;
 int __set_MASK (unsigned int) ;

__attribute__((used)) static void frv_cpupic_mask_ack(unsigned int irqlevel)
{
 __set_MASK(irqlevel);
 __clr_RC(irqlevel);
 __clr_IRL();
}
