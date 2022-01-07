
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2wr_hdr {int wqe_count; } ;
typedef int __be32 ;



__attribute__((used)) static __inline__ __be32 c2_wr_get_wqe_count(void *wr)
{
 return ((struct c2wr_hdr *) wr)->wqe_count;
}
