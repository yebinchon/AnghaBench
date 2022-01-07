
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef char __u16 ;


 int EINVAL ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;
 int qeth_l3_isxdigit (char*) ;
 int sscanf (char const*,char*,int*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

int qeth_l3_string_to_ipaddr6(const char *buf, __u8 *addr)
{
 const char *end, *end_tmp, *start;
 __u16 *in;
 char num[5];
 int num2, cnt, out, found, save_cnt;
 unsigned short in_tmp[8] = {0, };

 cnt = out = found = save_cnt = num2 = 0;
 end = start = buf;
 in = (__u16 *) addr;
 memset(in, 0, 16);
 while (*end) {
  end = strchr(start, ':');
  if (end == ((void*)0)) {
   end = buf + strlen(buf);
   end_tmp = strchr(start, '\n');
   if (end_tmp != ((void*)0))
    end = end_tmp;
   out = 1;
  }
  if ((end - start)) {
   memset(num, 0, 5);
   if ((end - start) > 4)
    return -EINVAL;
   memcpy(num, start, end - start);
   if (!qeth_l3_isxdigit(num))
    return -EINVAL;
   sscanf(start, "%x", &num2);
   if (found)
    in_tmp[save_cnt++] = num2;
   else
    in[cnt++] = num2;
   if (out)
    break;
  } else {
   if (found)
    return -EINVAL;
   found = 1;
  }
  start = ++end;
 }
 if (cnt + save_cnt > 8)
  return -EINVAL;
 cnt = 7;
 while (save_cnt)
  in[cnt--] = in_tmp[--save_cnt];
 return 0;
}
