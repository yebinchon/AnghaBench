
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int final_ack ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int final_ack_set(char *put_str, char *arg)
{
 if (strncmp(put_str+1, arg, 2))
  return 1;
 final_ack = 1;
 return 0;
}
