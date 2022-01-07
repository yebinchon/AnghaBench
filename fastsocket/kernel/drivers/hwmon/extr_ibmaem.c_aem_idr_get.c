
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int aem_idr ;
 int aem_idr_lock ;
 int idr_get_new (int *,int *,int*) ;
 int idr_pre_get (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aem_idr_get(int *id)
{
 int i, err;

again:
 if (unlikely(!idr_pre_get(&aem_idr, GFP_KERNEL)))
  return -ENOMEM;

 spin_lock(&aem_idr_lock);
 err = idr_get_new(&aem_idr, ((void*)0), &i);
 spin_unlock(&aem_idr_lock);

 if (unlikely(err == -EAGAIN))
  goto again;
 else if (unlikely(err))
  return err;

 *id = i & MAX_ID_MASK;
 return 0;
}
