
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_INT_PARAM ;
 int internal_setup (char*,int*) ;
 scalar_t__ isdigit (char) ;
 int simple_strtoul (char*,int *,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int option_setup(char *str)
{
 int ints[MAX_INT_PARAM];
 char *cur = str;
 int i = 1;

 while (cur && isdigit(*cur) && i <= MAX_INT_PARAM) {
  ints[i++] = simple_strtoul(cur, ((void*)0), 0);

  if ((cur = strchr(cur, ',')) != ((void*)0))
   cur++;
 }

 ints[0] = i - 1;
 internal_setup(cur, ints);
 return 1;
}
