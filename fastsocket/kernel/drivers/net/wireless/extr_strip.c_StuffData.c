
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u32 ;


 int StuffData_FinishBlock (int) ;
 int Stuff_CodeMask ;
 int Stuff_CountMask ;

 int Stuff_DiffZero ;
 int Stuff_Magic ;
 int Stuff_MaxCount ;




__attribute__((used)) static __u8 *StuffData(__u8 * src, __u32 length, __u8 * dst,
         __u8 ** code_ptr_ptr)
{
 __u8 *end = src + length;
 __u8 *code_ptr = *code_ptr_ptr;
 __u8 code = 130, count = 0;

 if (!length)
  return (dst);

 if (code_ptr) {



  code = (*code_ptr ^ Stuff_Magic) & Stuff_CodeMask;
  count = (*code_ptr ^ Stuff_Magic) & Stuff_CountMask;
 }

 while (src < end) {
  switch (code) {

  case 130:

   code_ptr = dst++;
   count = 0;

   if (*src == 0) {
    code = 128;
    src++;
   } else {
    code = 129;
    *dst++ = *src++ ^ Stuff_Magic;
   }



   break;


  case 128:

   if (*src == 0) {
    count++;
    src++;
   } else {
    StuffData_FinishBlock(128 + count);
   }
   break;


  case 129:

   if ((*src ^ Stuff_Magic) == code_ptr[1]) {
    count++;
    src++;
    break;
   }


   if (count) {
    StuffData_FinishBlock(129 + count);
    break;
   }

   code = 131;
  case 131:

   if (*src == 0) {
    StuffData_FinishBlock(Stuff_DiffZero +
            count);
   }

   else if ((*src ^ Stuff_Magic) == dst[-1]
     && dst[-1] == dst[-2]) {

    code += count - 2;

    if (code == 131 + 0) {
     code = 129 + 0;
    }
    StuffData_FinishBlock(code);
    code_ptr = dst - 2;

    count = 2;
    code = 129;
   }

   else {
    *dst++ = *src ^ Stuff_Magic;
    count++;
   }
   src++;
   break;
  }
  if (count == Stuff_MaxCount) {
   StuffData_FinishBlock(code + count);
  }
 }
 if (code == 130) {
  *code_ptr_ptr = ((void*)0);
 } else {
  *code_ptr_ptr = code_ptr;
  StuffData_FinishBlock(code + count);
 }
 return (dst);
}
