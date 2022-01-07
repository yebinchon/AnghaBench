
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {int xl_bit; } ;


 int ARRAY_SIZE (unsigned char*) ;
 int __clear_bit (int,int *) ;
 int __set_bit (int,int *) ;
 unsigned char* xl_table ;

__attribute__((used)) static void atkbd_calculate_xl_bit(struct atkbd *atkbd, unsigned char code)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(xl_table); i++) {
  if (!((code ^ xl_table[i]) & 0x7f)) {
   if (code & 0x80)
    __clear_bit(i, &atkbd->xl_bit);
   else
    __set_bit(i, &atkbd->xl_bit);
   break;
  }
 }
}
