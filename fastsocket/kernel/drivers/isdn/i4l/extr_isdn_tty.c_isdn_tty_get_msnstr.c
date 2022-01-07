
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISDN_MSNLEN ;

__attribute__((used)) static void
isdn_tty_get_msnstr(char *n, char **p)
{
 int limit = ISDN_MSNLEN - 1;

 while (((*p[0] >= '0' && *p[0] <= '9') ||

  (*p[0] == ',') || (*p[0] == ':')) &&
  (limit--))
  *n++ = *p[0]++;
 *n = '\0';
}
