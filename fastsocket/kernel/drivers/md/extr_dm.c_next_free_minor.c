
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int MINORBITS ;
 int MINOR_ALLOCED ;
 int _minor_idr ;
 int _minor_lock ;
 int idr_get_new (int *,int ,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int next_free_minor(int *minor)
{
 int r, m;

 r = idr_pre_get(&_minor_idr, GFP_KERNEL);
 if (!r)
  return -ENOMEM;

 spin_lock(&_minor_lock);

 r = idr_get_new(&_minor_idr, MINOR_ALLOCED, &m);
 if (r)
  goto out;

 if (m >= (1 << MINORBITS)) {
  idr_remove(&_minor_idr, m);
  r = -ENOSPC;
  goto out;
 }

 *minor = m;

out:
 spin_unlock(&_minor_lock);
 return r;
}
