
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cmm_skip_blanks(char *cp, char **endp)
{
 char *str;

 for (str = cp; *str == ' ' || *str == '\t'; str++);
 *endp = str;
 return str != cp;
}
