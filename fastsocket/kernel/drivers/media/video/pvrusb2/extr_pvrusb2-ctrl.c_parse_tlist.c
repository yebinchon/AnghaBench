
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ parse_mtoken (char const*,unsigned int,int*,char const**,int) ;

__attribute__((used)) static int parse_tlist(const char *ptr,unsigned int len,
         int *maskptr,int *valptr,
         const char **names,int valid_bits)
{
 unsigned int cnt;
 int mask,val,kv,mode,ret;
 mask = 0;
 val = 0;
 ret = 0;
 while (len) {
  cnt = 0;
  while ((cnt < len) &&
         ((ptr[cnt] <= 32) ||
   (ptr[cnt] >= 127))) cnt++;
  ptr += cnt;
  len -= cnt;
  mode = 0;
  if ((*ptr == '-') || (*ptr == '+')) {
   mode = (*ptr == '-') ? -1 : 1;
   ptr++;
   len--;
  }
  cnt = 0;
  while (cnt < len) {
   if (ptr[cnt] <= 32) break;
   if (ptr[cnt] >= 127) break;
   cnt++;
  }
  if (!cnt) break;
  if (parse_mtoken(ptr,cnt,&kv,names,valid_bits)) {
   ret = -EINVAL;
   break;
  }
  ptr += cnt;
  len -= cnt;
  switch (mode) {
  case 0:
   mask = valid_bits;
   val |= kv;
   break;
  case -1:
   mask |= kv;
   val &= ~kv;
   break;
  case 1:
   mask |= kv;
   val |= kv;
   break;
  default:
   break;
  }
 }
 *maskptr = mask;
 *valptr = val;
 return ret;
}
