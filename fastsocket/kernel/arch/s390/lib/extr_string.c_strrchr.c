
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* __strend (char const*) ;

char * strrchr(const char * s, int c)
{
       size_t len = __strend(s) - s;

       if (len)
        do {
         if (s[len] == (char) c)
          return (char *) s + len;
        } while (--len > 0);
       return ((void*)0);
}
