
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmd_match(const char *cmd, const char *str)
{




 while (*cmd && *str && *cmd == *str) {
  cmd++;
  str++;
 }
 if (*cmd == '\n')
  cmd++;
 if (*str || *cmd)
  return 0;
 return 1;
}
