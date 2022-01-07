
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {scalar_t__ readptr; scalar_t__ sh_mem; } ;


 scalar_t__ BANK2 ;
 scalar_t__ BANKLEN ;
 unsigned char readb (int ) ;

__attribute__((used)) static __inline__ unsigned char pcbit_readb(struct pcbit_dev *dev)
{
  unsigned char val;

  val = readb(dev->readptr++);
  if (dev->readptr == dev->sh_mem + BANK2 + BANKLEN)
    dev->readptr = dev->sh_mem + BANK2;

  return val;
}
