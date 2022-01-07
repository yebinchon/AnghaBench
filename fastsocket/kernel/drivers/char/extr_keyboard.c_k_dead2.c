
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int k_deadunicode (struct vc_data*,unsigned char,char) ;

__attribute__((used)) static void k_dead2(struct vc_data *vc, unsigned char value, char up_flag)
{
 k_deadunicode(vc, value, up_flag);
}
