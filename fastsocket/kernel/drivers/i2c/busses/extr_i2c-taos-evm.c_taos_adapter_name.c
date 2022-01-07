
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *taos_adapter_name(char *buffer)
{
 char *start, *end;

 start = strstr(buffer, "TAOS ");
 if (!start)
  return ((void*)0);

 end = strchr(start, '\r');
 if (!end)
  return ((void*)0);
 *end = '\0';

 return start;
}
