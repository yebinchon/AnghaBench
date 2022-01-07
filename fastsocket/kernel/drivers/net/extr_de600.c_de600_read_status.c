
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int DATA_PORT ;
 int HI_NIBBLE ;
 int NULL_COMMAND ;
 int STATUS ;
 int STATUS_PORT ;
 int inb (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static inline u8 de600_read_status(struct net_device *dev)
{
 u8 status;

 outb_p(STATUS, DATA_PORT);
 status = inb(STATUS_PORT);
 outb_p(NULL_COMMAND | HI_NIBBLE, DATA_PORT);

 return status;
}
