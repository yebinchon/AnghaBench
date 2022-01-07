
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 int simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static int parse_unit(char **ptr)
{
 char *str = *ptr, *end;
 int n = -1;

 if(isdigit(*str)) {
  n = simple_strtoul(str, &end, 0);
  if(end == str)
   return -1;
  *ptr = end;
 }
 else if (('a' <= *str) && (*str <= 'z')) {
  n = *str - 'a';
  str++;
  *ptr = str;
 }
 return n;
}
