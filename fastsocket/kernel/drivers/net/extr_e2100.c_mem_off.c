
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ E21_MEM_ENABLE ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void mem_off(short port)
{
 inb(port + E21_MEM_ENABLE);
 outb(0x00, port + E21_MEM_ENABLE);
}
