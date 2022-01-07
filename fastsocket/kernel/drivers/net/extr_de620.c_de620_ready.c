
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int READY ;
 int STATUS_PORT ;
 int inb (int ) ;
 short tot_cnt ;

__attribute__((used)) static inline byte
de620_ready(struct net_device *dev)
{
 byte value;
 register short int cnt = 0;

 while ((((value = inb(STATUS_PORT)) & READY) == 0) && (cnt <= 1000))
  ++cnt;




 return value & 0xf0;
}
