
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ base_addr ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,char) ;

__attribute__((used)) static void early_printk_putc(char c)
{
 unsigned retries = 10000;

 while (--retries && (in_be32(base_addr + 8) & (1 << 3)))
  ;



 if (retries)
  out_be32(base_addr + 4, c & 0xff);
}
