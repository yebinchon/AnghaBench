
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
of_decode_int(const unsigned char *p)
{
 unsigned int i = *p++ << 8;
 i = (i + *p++) << 8;
 i = (i + *p++) << 8;
 return (i + *p);
}
