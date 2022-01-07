
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *__ipr_format_res_path(u8 *res_path, char *buffer, size_t len)
{
 int i;
 char *p = buffer, *end = buffer + len;

 *p = '\0';
 p += snprintf(p, len, "%02X", res_path[0]);
 for (i = 1; res_path[i] != 0xff && ((i * 3) < len); i++)
  p += snprintf(p, end - p, "-%02X", res_path[i]);

 return buffer;
}
