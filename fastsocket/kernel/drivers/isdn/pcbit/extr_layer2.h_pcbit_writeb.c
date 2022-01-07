
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {scalar_t__ writeptr; scalar_t__ sh_mem; } ;


 scalar_t__ BANKLEN ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static __inline__ void pcbit_writeb(struct pcbit_dev *dev, unsigned char dt)
{
  writeb(dt, dev->writeptr++);
  if (dev->writeptr == dev->sh_mem + BANKLEN)
    dev->writeptr = dev->sh_mem;
}
