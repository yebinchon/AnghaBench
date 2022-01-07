
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2wr_hdr {int result; } ;



__attribute__((used)) static __inline__ u8 c2_wr_get_result(void *wr)
{
 return ((struct c2wr_hdr *) wr)->result;
}
