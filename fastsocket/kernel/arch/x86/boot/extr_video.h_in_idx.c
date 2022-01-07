
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline u8 in_idx(u16 port, u8 index)
{
 outb(index, port);
 return inb(port+1);
}
