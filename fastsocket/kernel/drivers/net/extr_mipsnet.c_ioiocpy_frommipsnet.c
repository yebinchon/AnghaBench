
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 unsigned char inb (int ) ;
 int inl (int ) ;
 int regaddr (struct net_device*,int ) ;
 int rxDataBuffer ;
 int rxDataCount ;

__attribute__((used)) static int ioiocpy_frommipsnet(struct net_device *dev, unsigned char *kdata,
   int len)
{
 for (; len > 0; len--, kdata++)
  *kdata = inb(regaddr(dev, rxDataBuffer));

 return inl(regaddr(dev, rxDataCount));
}
