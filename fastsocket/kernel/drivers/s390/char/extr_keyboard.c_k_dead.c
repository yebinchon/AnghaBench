
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_data {unsigned char diacr; } ;


 unsigned char handle_diacr (struct kbd_data*,unsigned char) ;
 unsigned char* ret_diacr ;

__attribute__((used)) static void
k_dead(struct kbd_data *kbd, unsigned char value)
{
 value = ret_diacr[value];
 kbd->diacr = (kbd->diacr ? handle_diacr(kbd, value) : value);
}
