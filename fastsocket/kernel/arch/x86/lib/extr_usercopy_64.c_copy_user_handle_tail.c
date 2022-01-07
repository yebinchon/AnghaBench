
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __get_user_nocheck (char,int ,int) ;
 scalar_t__ __put_user_nocheck (char,int ,int) ;

unsigned long
copy_user_handle_tail(char *to, char *from, unsigned len, unsigned zerorest)
{
 char c;
 unsigned zero_len;

 for (; len; --len) {
  if (__get_user_nocheck(c, from++, sizeof(char)))
   break;
  if (__put_user_nocheck(c, to++, sizeof(char)))
   break;
 }

 for (c = 0, zero_len = len; zerorest && zero_len; --zero_len)
  if (__put_user_nocheck(c, to++, sizeof(char)))
   break;
 return len;
}
