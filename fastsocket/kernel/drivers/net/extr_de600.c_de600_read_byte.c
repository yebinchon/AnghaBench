
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct net_device {int dummy; } ;


 int DATA_PORT ;
 unsigned char HI_NIBBLE ;
 int STATUS_PORT ;
 scalar_t__ inb (int ) ;
 int outb_p (unsigned char,int ) ;

__attribute__((used)) static inline u8 de600_read_byte(unsigned char type, struct net_device *dev)
{

 u8 lo;
 outb_p((type), DATA_PORT);
 lo = ((unsigned char)inb(STATUS_PORT)) >> 4;
 outb_p((type) | HI_NIBBLE, DATA_PORT);
 return ((unsigned char)inb(STATUS_PORT) & (unsigned char)0xf0) | lo;
}
