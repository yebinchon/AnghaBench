
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int id; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ib_uverbs_idr_lock ;
 int idr_get_new (struct idr*,struct ib_uobject*,int *) ;
 int idr_pre_get (struct idr*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int idr_add_uobj(struct idr *idr, struct ib_uobject *uobj)
{
 int ret;

retry:
 if (!idr_pre_get(idr, GFP_KERNEL))
  return -ENOMEM;

 spin_lock(&ib_uverbs_idr_lock);
 ret = idr_get_new(idr, uobj, &uobj->id);
 spin_unlock(&ib_uverbs_idr_lock);

 if (ret == -EAGAIN)
  goto retry;

 return ret;
}
