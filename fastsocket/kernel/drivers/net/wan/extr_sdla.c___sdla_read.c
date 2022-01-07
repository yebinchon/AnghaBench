
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;


 int SDLA_ADDR_MASK ;
 int SDLA_WINDOW (struct net_device*,int) ;
 int SDLA_WINDOW_SIZE ;
 int memcpy (char*,void const*,int) ;

__attribute__((used)) static void __sdla_read(struct net_device *dev, int addr, void *buf, short len)
{
 char *temp;
 const void *base;
 int offset, bytes;

 temp = buf;
 while(len)
 {
  offset = addr & SDLA_ADDR_MASK;
  bytes = offset + len > SDLA_WINDOW_SIZE ? SDLA_WINDOW_SIZE - offset : len;
  base = (const void *) (dev->mem_start + offset);

  SDLA_WINDOW(dev, addr);
  memcpy(temp, base, bytes);

  addr += bytes;
  temp += bytes;
  len -= bytes;
 }
}
