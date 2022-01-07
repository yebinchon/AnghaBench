
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {int base_addr; } ;


 int ADIAGSTATUS () ;
 int ASTATUS () ;

__attribute__((used)) static int com20020_status(struct net_device *dev)
{
 u_int ioaddr = dev->base_addr;

 return ASTATUS() + (ADIAGSTATUS()<<8);
}
