
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cp_private {int dummy; } ;


 int IntrMask ;
 int cp_intr_mask ;
 int cpw16_f (int ,int ) ;

__attribute__((used)) static void cp_enable_irq(struct cp_private *cp)
{
 cpw16_f(IntrMask, cp_intr_mask);
}
