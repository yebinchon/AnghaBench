
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_sa_query {int id; TYPE_1__* mad_buf; } ;
typedef int gfp_t ;
struct TYPE_2__ {int timeout_ms; struct ib_sa_query** context; } ;


 int EAGAIN ;
 int ENOMEM ;
 int ib_post_send_mad (TYPE_1__*,int *) ;
 int idr_get_new (int *,struct ib_sa_query*,int*) ;
 int idr_lock ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int query_idr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int send_mad(struct ib_sa_query *query, int timeout_ms, gfp_t gfp_mask)
{
 unsigned long flags;
 int ret, id;

retry:
 if (!idr_pre_get(&query_idr, gfp_mask))
  return -ENOMEM;
 spin_lock_irqsave(&idr_lock, flags);
 ret = idr_get_new(&query_idr, query, &id);
 spin_unlock_irqrestore(&idr_lock, flags);
 if (ret == -EAGAIN)
  goto retry;
 if (ret)
  return ret;

 query->mad_buf->timeout_ms = timeout_ms;
 query->mad_buf->context[0] = query;
 query->id = id;

 ret = ib_post_send_mad(query->mad_buf, ((void*)0));
 if (ret) {
  spin_lock_irqsave(&idr_lock, flags);
  idr_remove(&query_idr, id);
  spin_unlock_irqrestore(&idr_lock, flags);
 }






 return ret ? ret : id;
}
