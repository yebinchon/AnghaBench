
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct fc_lport {int dummy; } ;
struct fc_exch_pool {scalar_t__ left; scalar_t__ right; int next_index; int lock; int total_exches; int ex_list; } ;
struct TYPE_2__ {int no_free_exch_xid; int no_free_exch; } ;
struct fc_exch_mgr {int pool_max_index; int ep_pool; TYPE_1__ stats; int class; scalar_t__ min_xid; int pool; } ;
struct fc_exch {int timeout_work; int class; scalar_t__ rxid; int f_ctl; struct fc_lport* lp; struct fc_exch_pool* pool; struct fc_exch_mgr* em; scalar_t__ xid; scalar_t__ oxid; int seq_id; int ex_list; int ex_lock; } ;


 int FC_FC_FIRST_SEQ ;
 scalar_t__ FC_XID_UNKNOWN ;
 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int fc_cpu_order ;
 int fc_exch_hold (struct fc_exch*) ;
 scalar_t__ fc_exch_ptr_get (struct fc_exch_pool*,int) ;
 int fc_exch_ptr_set (struct fc_exch_pool*,int,struct fc_exch*) ;
 int fc_exch_timeout ;
 int fc_seq_alloc (struct fc_exch*,int ) ;
 unsigned int get_cpu () ;
 int list_add_tail (int *,int *) ;
 struct fc_exch* mempool_alloc (int ,int ) ;
 int mempool_free (struct fc_exch*,int ) ;
 int memset (struct fc_exch*,int ,int) ;
 struct fc_exch_pool* per_cpu_ptr (int ,unsigned int) ;
 int put_cpu () ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct fc_exch *fc_exch_em_alloc(struct fc_lport *lport,
     struct fc_exch_mgr *mp)
{
 struct fc_exch *ep;
 unsigned int cpu;
 u16 index;
 struct fc_exch_pool *pool;


 ep = mempool_alloc(mp->ep_pool, GFP_ATOMIC);
 if (!ep) {
  atomic_inc(&mp->stats.no_free_exch);
  goto out;
 }
 memset(ep, 0, sizeof(*ep));

 cpu = get_cpu();
 pool = per_cpu_ptr(mp->pool, cpu);
 spin_lock_bh(&pool->lock);
 put_cpu();


 if (pool->left != FC_XID_UNKNOWN) {
  index = pool->left;
  pool->left = FC_XID_UNKNOWN;
  goto hit;
 }
 if (pool->right != FC_XID_UNKNOWN) {
  index = pool->right;
  pool->right = FC_XID_UNKNOWN;
  goto hit;
 }

 index = pool->next_index;

 while (fc_exch_ptr_get(pool, index)) {
  index = index == mp->pool_max_index ? 0 : index + 1;
  if (index == pool->next_index)
   goto err;
 }
 pool->next_index = index == mp->pool_max_index ? 0 : index + 1;
hit:
 fc_exch_hold(ep);
 spin_lock_init(&ep->ex_lock);





 spin_lock_bh(&ep->ex_lock);

 fc_exch_ptr_set(pool, index, ep);
 list_add_tail(&ep->ex_list, &pool->ex_list);
 fc_seq_alloc(ep, ep->seq_id++);
 pool->total_exches++;
 spin_unlock_bh(&pool->lock);




 ep->oxid = ep->xid = (index << fc_cpu_order | cpu) + mp->min_xid;
 ep->em = mp;
 ep->pool = pool;
 ep->lp = lport;
 ep->f_ctl = FC_FC_FIRST_SEQ;
 ep->rxid = FC_XID_UNKNOWN;
 ep->class = mp->class;
 INIT_DELAYED_WORK(&ep->timeout_work, fc_exch_timeout);
out:
 return ep;
err:
 spin_unlock_bh(&pool->lock);
 atomic_inc(&mp->stats.no_free_exch_xid);
 mempool_free(ep, mp->ep_pool);
 return ((void*)0);
}
