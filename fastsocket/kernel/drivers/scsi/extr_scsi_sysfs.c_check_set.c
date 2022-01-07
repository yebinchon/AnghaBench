
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SCAN_WILD_CARD ;
 unsigned int simple_strtoul (char*,char**,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int check_set(unsigned int *val, char *src)
{
 char *last;

 if (strncmp(src, "-", 20) == 0) {
  *val = SCAN_WILD_CARD;
 } else {



  *val = simple_strtoul(src, &last, 0);
  if (*last != '\0')
   return 1;
 }
 return 0;
}
