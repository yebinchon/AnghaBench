
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_struct {scalar_t__ io_port; } ;


 unsigned int inb (scalar_t__) ;

__attribute__((used)) static inline unsigned int serial_in(struct esp_struct *info, int offset)
{
 return inb(info->io_port + offset);
}
