
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LDC_PACKET_SIZE ;

__attribute__((used)) static unsigned long __advance(unsigned long off, unsigned long num_entries)
{
 off += LDC_PACKET_SIZE;
 if (off == (num_entries * LDC_PACKET_SIZE))
  off = 0;

 return off;
}
