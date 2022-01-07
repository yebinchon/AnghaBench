
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2wr_hdr {int id; } ;



__attribute__((used)) static __inline__ void c2_wr_set_id(void *wr, u8 id)
{
 ((struct c2wr_hdr *) wr)->id = id;
}
