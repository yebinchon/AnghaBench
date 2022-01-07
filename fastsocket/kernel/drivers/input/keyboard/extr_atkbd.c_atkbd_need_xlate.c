
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned char*) ;
 unsigned char ATKBD_RET_EMUL0 ;
 unsigned char ATKBD_RET_EMUL1 ;
 int test_bit (int,unsigned long*) ;
 unsigned char* xl_table ;

__attribute__((used)) static int atkbd_need_xlate(unsigned long xl_bit, unsigned char code)
{
 int i;

 if (code == ATKBD_RET_EMUL0 || code == ATKBD_RET_EMUL1)
  return 0;

 for (i = 0; i < ARRAY_SIZE(xl_table); i++)
  if (code == xl_table[i])
   return test_bit(i, &xl_bit);

 return 1;
}
