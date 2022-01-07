
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int diacr ;
 unsigned int handle_diacr (struct vc_data*,unsigned int) ;

__attribute__((used)) static void k_deadunicode(struct vc_data *vc, unsigned int value, char up_flag)
{
 if (up_flag)
  return;
 diacr = (diacr ? handle_diacr(vc, value) : value);
}
