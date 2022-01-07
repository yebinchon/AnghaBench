
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int status; } ;


 int MSR_IA32_MCx_STATUS (int) ;
 int mce_wrmsrl (int ,int ) ;
 scalar_t__ westmere ;

__attribute__((used)) static int
mce_quirk(int bank, struct mce *m)
{
 if (westmere && bank == 6 && ((m->status >> 16) & 0xffff) == 0x2000) {
  mce_wrmsrl(MSR_IA32_MCx_STATUS(6), 0);
  return 1;
 }
 return 0;
}
