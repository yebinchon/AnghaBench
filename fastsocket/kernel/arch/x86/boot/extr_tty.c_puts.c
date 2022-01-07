
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (int ) ;

void __attribute__((section(".inittext"))) puts(const char *str)
{
 while (*str)
  putchar(*str++);
}
