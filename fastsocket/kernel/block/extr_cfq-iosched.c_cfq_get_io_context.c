
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_context {int cgroup_changed; int ioprio_changed; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {TYPE_1__* queue; } ;
typedef int gfp_t ;
struct TYPE_2__ {int node; } ;


 int EEXIST ;
 int __GFP_WAIT ;
 struct cfq_io_context* cfq_alloc_io_context (struct cfq_data*,int) ;
 int cfq_cic_free (struct cfq_io_context*) ;
 int cfq_cic_link (struct cfq_data*,struct io_context*,struct cfq_io_context*,int) ;
 struct cfq_io_context* cfq_cic_lookup (struct cfq_data*,struct io_context*) ;
 int cfq_ioc_set_cgroup (struct io_context*) ;
 int cfq_ioc_set_ioprio (struct io_context*) ;
 struct io_context* get_io_context (int,int ) ;
 int might_sleep_if (int) ;
 int put_io_context (struct io_context*) ;
 int smp_read_barrier_depends () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct cfq_io_context *
cfq_get_io_context(struct cfq_data *cfqd, gfp_t gfp_mask)
{
 struct io_context *ioc = ((void*)0);
 struct cfq_io_context *cic;
 int ret;

 might_sleep_if(gfp_mask & __GFP_WAIT);

 ioc = get_io_context(gfp_mask, cfqd->queue->node);
 if (!ioc)
  return ((void*)0);

retry:
 cic = cfq_cic_lookup(cfqd, ioc);
 if (cic)
  goto out;

 cic = cfq_alloc_io_context(cfqd, gfp_mask);
 if (cic == ((void*)0))
  goto err;

 ret = cfq_cic_link(cfqd, ioc, cic, gfp_mask);
 if (ret == -EEXIST) {

  cfq_cic_free(cic);
  goto retry;
 } else if (ret)
  goto err_free;

out:
 smp_read_barrier_depends();
 if (unlikely(ioc->ioprio_changed))
  cfq_ioc_set_ioprio(ioc);





 return cic;
err_free:
 cfq_cic_free(cic);
err:
 put_io_context(ioc);
 return ((void*)0);
}
