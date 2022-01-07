
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cq_sgl_desc {int tmpl; int sgl_err; int tot_data_bytes; int active_burst_offset; } ;
struct cq_desc {int dummy; } ;


 int CQ_SGL_SGL_ERR_MASK ;
 int CQ_SGL_TMPL_MASK ;
 int cq_desc_dec (struct cq_desc*,int*,int*,int*,int*) ;

__attribute__((used)) static inline void cq_sgl_desc_dec(struct cq_sgl_desc *desc_ptr,
       u8 *type,
       u8 *color,
       u16 *q_number,
       u16 *exchange_id,
       u32 *active_burst_offset,
       u32 *tot_data_bytes,
       u16 *tmpl,
       u8 *sgl_err)
{


 cq_desc_dec((struct cq_desc *)desc_ptr, type, color, q_number,
      exchange_id);
 *active_burst_offset = desc_ptr->active_burst_offset;
 *tot_data_bytes = desc_ptr->tot_data_bytes;
 *tmpl = desc_ptr->tmpl & CQ_SGL_TMPL_MASK;
 *sgl_err = desc_ptr->sgl_err & CQ_SGL_SGL_ERR_MASK;
}
