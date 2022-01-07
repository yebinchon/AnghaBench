
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LENGTH ;

void write_bytes(char *addr)
{
 unsigned long i;

 for (i = 0; i < LENGTH; i++)
  *(addr + i) = (char)i;
}
