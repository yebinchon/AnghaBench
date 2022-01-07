
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct ipath_sge {int length; int sge_length; unsigned int m; unsigned int n; void* vaddr; struct ipath_mregion* mr; } ;
struct ipath_sge_state {int num_sge; int * sg_list; struct ipath_sge sge; } ;
struct TYPE_4__ {scalar_t__ pd; int device; } ;
struct ipath_qp {TYPE_1__ ibqp; } ;
struct ipath_pd {scalar_t__ user; } ;
struct ipath_mregion {int lkey; scalar_t__ pd; scalar_t__ iova; int length; int access_flags; TYPE_3__** map; scalar_t__ offset; } ;
struct ipath_lkey_table {struct ipath_mregion** table; } ;
struct ipath_ibdev {struct ipath_lkey_table lk_table; } ;
struct TYPE_6__ {TYPE_2__* segs; } ;
struct TYPE_5__ {size_t length; void* vaddr; } ;


 unsigned int IPATH_SEGSZ ;
 int ib_ipath_lkey_table_size ;
 struct ipath_ibdev* to_idev (int ) ;
 struct ipath_pd* to_ipd (scalar_t__) ;
 scalar_t__ unlikely (int) ;

int ipath_rkey_ok(struct ipath_qp *qp, struct ipath_sge_state *ss,
    u32 len, u64 vaddr, u32 rkey, int acc)
{
 struct ipath_ibdev *dev = to_idev(qp->ibqp.device);
 struct ipath_lkey_table *rkt = &dev->lk_table;
 struct ipath_sge *sge = &ss->sge;
 struct ipath_mregion *mr;
 unsigned n, m;
 size_t off;
 int ret;





 if (rkey == 0) {

  struct ipath_pd *pd = to_ipd(qp->ibqp.pd);

  if (pd->user) {
   ret = 0;
   goto bail;
  }
  sge->mr = ((void*)0);
  sge->vaddr = (void *) vaddr;
  sge->length = len;
  sge->sge_length = len;
  ss->sg_list = ((void*)0);
  ss->num_sge = 1;
  ret = 1;
  goto bail;
 }

 mr = rkt->table[(rkey >> (32 - ib_ipath_lkey_table_size))];
 if (unlikely(mr == ((void*)0) || mr->lkey != rkey ||
       qp->ibqp.pd != mr->pd)) {
  ret = 0;
  goto bail;
 }

 off = vaddr - mr->iova;
 if (unlikely(vaddr < mr->iova || off + len > mr->length ||
       (mr->access_flags & acc) == 0)) {
  ret = 0;
  goto bail;
 }

 off += mr->offset;
 m = 0;
 n = 0;
 while (off >= mr->map[m]->segs[n].length) {
  off -= mr->map[m]->segs[n].length;
  n++;
  if (n >= IPATH_SEGSZ) {
   m++;
   n = 0;
  }
 }
 sge->mr = mr;
 sge->vaddr = mr->map[m]->segs[n].vaddr + off;
 sge->length = mr->map[m]->segs[n].length - off;
 sge->sge_length = len;
 sge->m = m;
 sge->n = n;
 ss->sg_list = ((void*)0);
 ss->num_sge = 1;

 ret = 1;

bail:
 return ret;
}
