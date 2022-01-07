
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_info {unsigned long major; unsigned long minor; int flags; scalar_t__ refcnt; } ;


 int EINVAL ;
 int FLAG_PRE_API ;
 unsigned long HV_EBADTRAP ;
 unsigned long HV_ENOTSUPPORTED ;
 unsigned long HV_EOK ;
 struct api_info* __get_info (unsigned long) ;
 int __get_ref (struct api_info*) ;
 int hvapi_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long sun4v_set_version (unsigned long,unsigned long,unsigned long,unsigned long*) ;

int sun4v_hvapi_register(unsigned long group, unsigned long major,
    unsigned long *minor)
{
 struct api_info *p;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&hvapi_lock, flags);
 p = __get_info(group);
 ret = -EINVAL;
 if (p) {
  if (p->refcnt) {
   ret = -EINVAL;
   if (p->major == major) {
    *minor = p->minor;
    ret = 0;
   }
  } else {
   unsigned long actual_minor;
   unsigned long hv_ret;

   hv_ret = sun4v_set_version(group, major, *minor,
         &actual_minor);
   ret = -EINVAL;
   if (hv_ret == HV_EOK) {
    *minor = actual_minor;
    p->major = major;
    p->minor = actual_minor;
    ret = 0;
   } else if (hv_ret == HV_EBADTRAP ||
       hv_ret == HV_ENOTSUPPORTED) {
    if (p->flags & FLAG_PRE_API) {
     if (major == 1) {
      p->major = 1;
      p->minor = 0;
      *minor = 0;
      ret = 0;
     }
    }
   }
  }

  if (ret == 0)
   __get_ref(p);
 }
 spin_unlock_irqrestore(&hvapi_lock, flags);

 return ret;
}
