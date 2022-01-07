
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ffs (int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
bitregister_process(char *p, u64 *reg_info, int max)
{
 int i, begin, skip = 0;
 u64 value = reg_info[0];

 value >>= i = begin = ffs(value) - 1;

 for(; i < max; i++ ) {

  if (i != 0 && (i%64) == 0) value = *++reg_info;

  if ((value & 0x1) == 0 && skip == 0) {
   if (begin <= i - 2)
    p += sprintf(p, "%d-%d ", begin, i-1);
   else
    p += sprintf(p, "%d ", i-1);
   skip = 1;
   begin = -1;
  } else if ((value & 0x1) && skip == 1) {
   skip = 0;
   begin = i;
  }
  value >>=1;
 }
 if (begin > -1) {
  if (begin < 127)
   p += sprintf(p, "%d-127", begin);
  else
   p += sprintf(p, "127");
 }

 return p;
}
