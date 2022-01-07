
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {scalar_t__ j_extent; void* len; } ;
struct scatterlist {int dummy; } ;


 scalar_t__ DESC_PTR_LNKTBL_RETURN ;
 int be16_to_cpu (void*) ;
 void* cpu_to_be16 (int) ;
 struct scatterlist* scatterwalk_sg_next (struct scatterlist*) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 int to_talitos_ptr (struct talitos_ptr*,int ) ;

__attribute__((used)) static int sg_to_link_tbl(struct scatterlist *sg, int sg_count,
      int cryptlen, struct talitos_ptr *link_tbl_ptr)
{
 int n_sg = sg_count;

 while (n_sg--) {
  to_talitos_ptr(link_tbl_ptr, sg_dma_address(sg));
  link_tbl_ptr->len = cpu_to_be16(sg_dma_len(sg));
  link_tbl_ptr->j_extent = 0;
  link_tbl_ptr++;
  cryptlen -= sg_dma_len(sg);
  sg = scatterwalk_sg_next(sg);
 }


 link_tbl_ptr--;
 while (be16_to_cpu(link_tbl_ptr->len) <= (-cryptlen)) {

  cryptlen += be16_to_cpu(link_tbl_ptr->len);
  link_tbl_ptr->len = 0;
  sg_count--;
  link_tbl_ptr--;
 }
 link_tbl_ptr->len = cpu_to_be16(be16_to_cpu(link_tbl_ptr->len)
     + cryptlen);


 link_tbl_ptr->j_extent = DESC_PTR_LNKTBL_RETURN;

 return sg_count;
}
