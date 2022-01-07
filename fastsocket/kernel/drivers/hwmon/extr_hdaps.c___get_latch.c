
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int inb (int ) ;

__attribute__((used)) static inline u8 __get_latch(u16 port)
{
 return inb(port) & 0xff;
}
