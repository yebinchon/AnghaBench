
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int base_addr; } ;


 int PIOP (unsigned int) ;
 int PIORH (unsigned int) ;
 int PIORH_MASK ;
 int PIORL (unsigned int) ;
 int RX_BASE ;
 int RX_SIZE ;
 int insb (int ,char*,int) ;
 int outb (int,int ) ;

__attribute__((used)) static int
read_ringbuf(struct net_device * dev,
      int addr,
      char * buf,
      int len)
{
  unsigned int base = dev->base_addr;
  int ring_ptr = addr;
  int chunk_len;
  char * buf_ptr = buf;


  while(len > 0)
    {

      outb(ring_ptr & 0xff, PIORL(base));
      outb(((ring_ptr >> 8) & PIORH_MASK), PIORH(base));



      if((addr + len) < (RX_BASE + RX_SIZE))
 chunk_len = len;
      else
 chunk_len = RX_BASE + RX_SIZE - addr;
      insb(PIOP(base), buf_ptr, chunk_len);
      buf_ptr += chunk_len;
      len -= chunk_len;
      ring_ptr = (ring_ptr - RX_BASE + chunk_len) % RX_SIZE + RX_BASE;
    }
  return(ring_ptr);
}
