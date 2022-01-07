
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int EINVAL ;
 int sscanf (char const*,char*,int*,int*,int*,int*,char*) ;

int qeth_l3_string_to_ipaddr4(const char *buf, __u8 *addr)
{
 int count = 0, rc = 0;
 int in[4];
 char c;

 rc = sscanf(buf, "%u.%u.%u.%u%c",
      &in[0], &in[1], &in[2], &in[3], &c);
 if (rc != 4 && (rc != 5 || c != '\n'))
  return -EINVAL;
 for (count = 0; count < 4; count++) {
  if (in[count] > 255)
   return -EINVAL;
  addr[count] = in[count];
 }
 return 0;
}
