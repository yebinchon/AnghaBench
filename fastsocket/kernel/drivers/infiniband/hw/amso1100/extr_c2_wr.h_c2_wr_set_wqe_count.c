
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c2wr_hdr {int wqe_count; } ;



__attribute__((used)) static __inline__ void c2_wr_set_wqe_count(void *wr, u32 wqe_count)
{
 ((struct c2wr_hdr *) wr)->wqe_count = wqe_count;
}
