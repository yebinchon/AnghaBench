
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int printk (char*,char*) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int strlen (char const*) ;

void cper_print_bits(const char *pfx, unsigned int bits,
       const char *strs[], unsigned int strs_size)
{
 int i, len = 0;
 const char *str;
 char buf[84];

 for (i = 0; i < strs_size; i++) {
  if (!(bits & (1U << i)))
   continue;
  str = strs[i];
  if (!str)
   continue;
  if (len && len + strlen(str) + 2 > 80) {
   printk("%s\n", buf);
   len = 0;
  }
  if (!len)
   len = snprintf(buf, sizeof(buf), "%s%s", pfx, str);
  else
   len += snprintf(buf+len, sizeof(buf)-len, ", %s", str);
 }
 if (len)
  printk("%s\n", buf);
}
