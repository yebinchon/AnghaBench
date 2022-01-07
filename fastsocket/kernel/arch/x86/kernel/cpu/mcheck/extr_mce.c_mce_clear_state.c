
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_MCx_STATUS (int) ;
 int banks ;
 int mce_wrmsrl (int ,int ) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static void mce_clear_state(unsigned long *toclear)
{
 int i;

 for (i = 0; i < banks; i++) {
  if (test_bit(i, toclear))
   mce_wrmsrl(MSR_IA32_MCx_STATUS(i), 0);
 }
}
