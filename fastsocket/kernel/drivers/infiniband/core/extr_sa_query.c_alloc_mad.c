
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_sa_query {TYPE_2__* sm_ah; TYPE_3__* mad_buf; TYPE_1__* port; } ;
typedef int gfp_t ;
struct TYPE_7__ {int ah; } ;
struct TYPE_6__ {int ah; int ref; int pkey_index; } ;
struct TYPE_5__ {int agent; int ah_lock; TYPE_2__* sm_ah; } ;


 int EAGAIN ;
 int ENOMEM ;
 int IB_MGMT_SA_DATA ;
 int IB_MGMT_SA_HDR ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int free_sm_ah ;
 TYPE_3__* ib_create_send_mad (int ,int,int ,int ,int ,int ,int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int alloc_mad(struct ib_sa_query *query, gfp_t gfp_mask)
{
 unsigned long flags;

 spin_lock_irqsave(&query->port->ah_lock, flags);
 if (!query->port->sm_ah) {
  spin_unlock_irqrestore(&query->port->ah_lock, flags);
  return -EAGAIN;
 }
 kref_get(&query->port->sm_ah->ref);
 query->sm_ah = query->port->sm_ah;
 spin_unlock_irqrestore(&query->port->ah_lock, flags);

 query->mad_buf = ib_create_send_mad(query->port->agent, 1,
         query->sm_ah->pkey_index,
         0, IB_MGMT_SA_HDR, IB_MGMT_SA_DATA,
         gfp_mask);
 if (IS_ERR(query->mad_buf)) {
  kref_put(&query->sm_ah->ref, free_sm_ah);
  return -ENOMEM;
 }

 query->mad_buf->ah = query->sm_ah->ah;

 return 0;
}
