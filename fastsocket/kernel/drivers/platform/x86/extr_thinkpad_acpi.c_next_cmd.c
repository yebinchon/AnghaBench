
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static char *next_cmd(char **cmds)
{
 char *start = *cmds;
 char *end;

 while ((end = strchr(start, ',')) && end == start)
  start = end + 1;

 if (!end)
  return ((void*)0);

 *end = 0;
 *cmds = end + 1;
 return start;
}
