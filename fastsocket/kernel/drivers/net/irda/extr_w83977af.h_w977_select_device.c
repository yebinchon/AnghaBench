
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int outb (int,unsigned int) ;

__attribute__((used)) static inline void w977_select_device(__u8 devnum, unsigned int efio)
{
 outb(0x07, efio);
 outb(devnum, efio+1);
}
