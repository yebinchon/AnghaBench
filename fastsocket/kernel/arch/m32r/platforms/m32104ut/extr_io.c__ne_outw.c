
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short cpu_to_le16 (unsigned short) ;

__attribute__((used)) static inline void _ne_outw(unsigned short w, void *portp)
{
 *(volatile unsigned short *)portp = cpu_to_le16(w);
}
