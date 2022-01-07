
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq_buf {int dummy; } ;
struct vnic_wq {int dummy; } ;
struct cq_desc {int dummy; } ;


 int enic_free_wq_buf (struct vnic_wq*,struct vnic_wq_buf*) ;

__attribute__((used)) static void enic_wq_free_buf(struct vnic_wq *wq,
 struct cq_desc *cq_desc, struct vnic_wq_buf *buf, void *opaque)
{
 enic_free_wq_buf(wq, buf);
}
