
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u32 ;


 int Stuff_CodeMask ;
 int Stuff_CountMask ;


 int Stuff_Magic ;



__attribute__((used)) static __u8 *UnStuffData(__u8 * src, __u8 * end, __u8 * dst,
    __u32 dst_length)
{
 __u8 *dst_end = dst + dst_length;

 if (!src || !end || !dst || !dst_length)
  return (((void*)0));
 while (src < end && dst < dst_end) {
  int count = (*src ^ Stuff_Magic) & Stuff_CountMask;
  switch ((*src ^ Stuff_Magic) & Stuff_CodeMask) {
  case 131:
   if (src + 1 + count >= end)
    return (((void*)0));
   do {
    *dst++ = *++src ^ Stuff_Magic;
   }
   while (--count >= 0 && dst < dst_end);
   if (count < 0)
    src += 1;
   else {
    if (count == 0)
     *src = 129 ^ Stuff_Magic;
    else
     *src =
         (131 +
          count) ^ Stuff_Magic;
   }
   break;
  case 130:
   if (src + 1 + count >= end)
    return (((void*)0));
   do {
    *dst++ = *++src ^ Stuff_Magic;
   }
   while (--count >= 0 && dst < dst_end);
   if (count < 0)
    *src = 128 ^ Stuff_Magic;
   else
    *src =
        (130 + count) ^ Stuff_Magic;
   break;
  case 129:
   if (src + 1 >= end)
    return (((void*)0));
   do {
    *dst++ = src[1] ^ Stuff_Magic;
   }
   while (--count >= 0 && dst < dst_end);
   if (count < 0)
    src += 2;
   else
    *src = (129 + count) ^ Stuff_Magic;
   break;
  case 128:
   do {
    *dst++ = 0;
   }
   while (--count >= 0 && dst < dst_end);
   if (count < 0)
    src += 1;
   else
    *src = (128 + count) ^ Stuff_Magic;
   break;
  }
 }
 if (dst < dst_end)
  return (((void*)0));
 else
  return (src);
}
