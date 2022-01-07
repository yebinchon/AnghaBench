
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2wr_hdr {int flags; } ;



__attribute__((used)) static __inline__ void c2_wr_set_flags(void *wr, u8 flags)
{
 ((struct c2wr_hdr *) wr)->flags = flags;
}
