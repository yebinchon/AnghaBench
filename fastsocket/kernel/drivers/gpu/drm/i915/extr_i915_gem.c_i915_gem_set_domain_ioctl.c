
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_gem_set_domain {int read_domains; int write_domain; int handle; } ;
struct drm_i915_gem_object {int base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int EINVAL ;
 int ENOENT ;
 int I915_GEM_DOMAIN_GTT ;
 int I915_GEM_GPU_DOMAINS ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_set_to_cpu_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_set_to_gtt_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_wait_rendering__nonblocking (struct drm_i915_gem_object*,int) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct drm_i915_gem_set_domain *args = data;
 struct drm_i915_gem_object *obj;
 uint32_t read_domains = args->read_domains;
 uint32_t write_domain = args->write_domain;
 int ret;


 if (write_domain & I915_GEM_GPU_DOMAINS)
  return -EINVAL;

 if (read_domains & I915_GEM_GPU_DOMAINS)
  return -EINVAL;




 if (write_domain != 0 && read_domains != write_domain)
  return -EINVAL;

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file, args->handle));
 if (&obj->base == ((void*)0)) {
  ret = -ENOENT;
  goto unlock;
 }





 ret = i915_gem_object_wait_rendering__nonblocking(obj, !write_domain);
 if (ret)
  goto unref;

 if (read_domains & I915_GEM_DOMAIN_GTT) {
  ret = i915_gem_object_set_to_gtt_domain(obj, write_domain != 0);





  if (ret == -EINVAL)
   ret = 0;
 } else {
  ret = i915_gem_object_set_to_cpu_domain(obj, write_domain != 0);
 }

unref:
 drm_gem_object_unreference(&obj->base);
unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}
