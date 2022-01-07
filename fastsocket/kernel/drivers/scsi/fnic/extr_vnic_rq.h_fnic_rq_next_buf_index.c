
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq {int buf_index; } ;



__attribute__((used)) static inline unsigned int vnic_rq_next_buf_index(struct vnic_rq *rq)
{
 return rq->buf_index++;
}
