
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; } ;
struct qdio_buffer_element {int eflags; int length; void* addr; int sflags; } ;


 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_TYPE_WRITE_READ ;
 void* sg_virt (struct scatterlist*) ;

__attribute__((used)) static void zfcp_fsf_setup_ct_els_unchained(struct qdio_buffer_element *sbale,
         struct scatterlist *sg_req,
         struct scatterlist *sg_resp)
{
 sbale[0].sflags |= SBAL_SFLAGS0_TYPE_WRITE_READ;
 sbale[2].addr = sg_virt(sg_req);
 sbale[2].length = sg_req->length;
 sbale[3].addr = sg_virt(sg_resp);
 sbale[3].length = sg_resp->length;
 sbale[3].eflags |= SBAL_EFLAGS_LAST_ENTRY;
}
