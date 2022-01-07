
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static
u_char *
skipext(u_char * p)
{
 while (!(*p++ & 0x80));
 return (p);
}
