
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {TYPE_1__* dfsentry; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int mmio32read_next; } ;


 unsigned int B43_MAX_MMIO_ACCESS ;
 int EDESTADDRREQ ;
 int b43_read32 (struct b43_wldev*,unsigned int) ;
 int fappend (char*,int ) ;

__attribute__((used)) static ssize_t mmio32read__read_file(struct b43_wldev *dev,
         char *buf, size_t bufsize)
{
 ssize_t count = 0;
 unsigned int addr;
 u32 val;

 addr = dev->dfsentry->mmio32read_next;
 if (addr > B43_MAX_MMIO_ACCESS)
  return -EDESTADDRREQ;

 val = b43_read32(dev, addr);
 fappend("0x%08X\n", val);

 return count;
}
