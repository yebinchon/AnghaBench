
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_struct {scalar_t__ io_port; } ;


 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void serial_out(struct esp_struct *info, int offset,
         unsigned char value)
{
 outb(value, info->io_port+offset);
}
