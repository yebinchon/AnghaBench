
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MINORBITS ;
 int MINOR_ALLOCED ;
 int _minor_idr ;
 int _minor_lock ;
 scalar_t__ idr_find (int *,int) ;
 int idr_get_new_above (int *,int ,int,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int specific_minor(int minor)
{
 int r, m;

 if (minor >= (1 << MINORBITS))
  return -EINVAL;

 r = idr_pre_get(&_minor_idr, GFP_KERNEL);
 if (!r)
  return -ENOMEM;

 spin_lock(&_minor_lock);

 if (idr_find(&_minor_idr, minor)) {
  r = -EBUSY;
  goto out;
 }

 r = idr_get_new_above(&_minor_idr, MINOR_ALLOCED, minor, &m);
 if (r)
  goto out;

 if (m != minor) {
  idr_remove(&_minor_idr, m);
  r = -EBUSY;
  goto out;
 }

out:
 spin_unlock(&_minor_lock);
 return r;
}
