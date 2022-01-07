
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u64 ;
struct ib_mr {int dummy; } ;
struct TYPE_7__ {int access_flags; int max_segs; scalar_t__ length; TYPE_2__** map; scalar_t__ offset; void* iova; void* user_base; struct ib_pd* pd; } ;
struct ipath_mr {struct ib_mr ibmr; TYPE_3__ mr; int * umem; } ;
struct ib_phys_buf {scalar_t__ size; scalar_t__ addr; } ;
struct ib_pd {int device; } ;
struct TYPE_8__ {int lk_table; } ;
struct TYPE_6__ {TYPE_1__* segs; } ;
struct TYPE_5__ {scalar_t__ length; void* vaddr; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int ) ;
 int IPATH_SEGSZ ;
 struct ipath_mr* alloc_mr (int,int *) ;
 TYPE_4__* to_idev (int ) ;

struct ib_mr *ipath_reg_phys_mr(struct ib_pd *pd,
    struct ib_phys_buf *buffer_list,
    int num_phys_buf, int acc, u64 *iova_start)
{
 struct ipath_mr *mr;
 int n, m, i;
 struct ib_mr *ret;

 mr = alloc_mr(num_phys_buf, &to_idev(pd->device)->lk_table);
 if (mr == ((void*)0)) {
  ret = ERR_PTR(-ENOMEM);
  goto bail;
 }

 mr->mr.pd = pd;
 mr->mr.user_base = *iova_start;
 mr->mr.iova = *iova_start;
 mr->mr.length = 0;
 mr->mr.offset = 0;
 mr->mr.access_flags = acc;
 mr->mr.max_segs = num_phys_buf;
 mr->umem = ((void*)0);

 m = 0;
 n = 0;
 for (i = 0; i < num_phys_buf; i++) {
  mr->mr.map[m]->segs[n].vaddr = (void *) buffer_list[i].addr;
  mr->mr.map[m]->segs[n].length = buffer_list[i].size;
  mr->mr.length += buffer_list[i].size;
  n++;
  if (n == IPATH_SEGSZ) {
   m++;
   n = 0;
  }
 }

 ret = &mr->ibmr;

bail:
 return ret;
}
