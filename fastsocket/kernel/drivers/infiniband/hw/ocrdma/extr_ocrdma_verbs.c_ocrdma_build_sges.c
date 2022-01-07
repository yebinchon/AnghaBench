
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_sge {scalar_t__ len; int addr_hi; int addr_lo; int lrkey; } ;
struct ocrdma_hdr_wqe {int total_len; } ;
struct ib_sge {scalar_t__ length; int addr; int lkey; } ;


 int memset (struct ocrdma_sge*,int ,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void ocrdma_build_sges(struct ocrdma_hdr_wqe *hdr,
         struct ocrdma_sge *sge, int num_sge,
         struct ib_sge *sg_list)
{
 int i;

 for (i = 0; i < num_sge; i++) {
  sge[i].lrkey = sg_list[i].lkey;
  sge[i].addr_lo = sg_list[i].addr;
  sge[i].addr_hi = upper_32_bits(sg_list[i].addr);
  sge[i].len = sg_list[i].length;
  hdr->total_len += sg_list[i].length;
 }
 if (num_sge == 0)
  memset(sge, 0, sizeof(*sge));
}
