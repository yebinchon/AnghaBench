
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq {int dummy; } ;


 int stub1 (struct vnic_rq*) ;
 int vnic_rq_desc_avail (struct vnic_rq*) ;

__attribute__((used)) static inline int vnic_rq_fill(struct vnic_rq *rq,
 int (*buf_fill)(struct vnic_rq *rq))
{
 int err;

 while (vnic_rq_desc_avail(rq) > 1) {

  err = (*buf_fill)(rq);
  if (err)
   return err;
 }

 return 0;
}
