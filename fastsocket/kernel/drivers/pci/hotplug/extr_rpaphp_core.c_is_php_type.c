
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static int is_php_type(char *drc_type)
{
 unsigned long value;
 char *endptr;


 value = simple_strtoul(drc_type, &endptr, 10);
 if (endptr == drc_type)
  return 0;

 return 1;
}
