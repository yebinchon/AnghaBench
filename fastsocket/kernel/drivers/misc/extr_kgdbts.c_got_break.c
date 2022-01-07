
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char*,char*,int) ;
 int test_complete ;

__attribute__((used)) static int got_break(char *put_str, char *arg)
{
 test_complete = 1;
 if (!strncmp(put_str+1, arg, 2)) {
  if (!strncmp(arg, "T0", 2))
   test_complete = 2;
  return 0;
 }
 return 1;
}
