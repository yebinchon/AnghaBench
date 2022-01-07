
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _prom_getenv (char*) ;

char *prom_getenv(char *s)
{
 return _prom_getenv(s);
}
