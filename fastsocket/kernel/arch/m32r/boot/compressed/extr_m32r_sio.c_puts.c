
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putc (char) ;

__attribute__((used)) static int puts(const char *s)
{
 char c;
 while ((c = *s++)) putc(c);
 return 0;
}
