
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 erxrdpt_workaround(u16 next_packet_ptr, u16 start, u16 end)
{
 u16 erxrdpt;

 if ((next_packet_ptr - 1 < start) || (next_packet_ptr - 1 > end))
  erxrdpt = end;
 else
  erxrdpt = next_packet_ptr - 1;

 return erxrdpt;
}
