
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct b43_wldev {TYPE_1__* dfsentry; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int shm16read_routing_next; unsigned int shm16read_addr_next; } ;


 unsigned int B43_MAX_SHM_ADDR ;
 unsigned int B43_MAX_SHM_ROUTING ;
 int EDESTADDRREQ ;
 int b43_shm_read16 (struct b43_wldev*,unsigned int,unsigned int) ;
 int fappend (char*,int ) ;

__attribute__((used)) static ssize_t shm16read__read_file(struct b43_wldev *dev,
        char *buf, size_t bufsize)
{
 ssize_t count = 0;
 unsigned int routing, addr;
 u16 val;

 routing = dev->dfsentry->shm16read_routing_next;
 addr = dev->dfsentry->shm16read_addr_next;
 if ((routing > B43_MAX_SHM_ROUTING) ||
     (addr > B43_MAX_SHM_ADDR))
  return -EDESTADDRREQ;

 val = b43_shm_read16(dev, routing, addr);
 fappend("0x%04X\n", val);

 return count;
}
