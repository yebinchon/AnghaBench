
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT (int) ;
 int outb (int,int ) ;

__attribute__((used)) static inline void serial_out(int offset, int value)
{
 outb(value, PORT(offset));
}
