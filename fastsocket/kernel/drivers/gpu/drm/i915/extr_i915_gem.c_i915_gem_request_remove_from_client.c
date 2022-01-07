
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_gem_request {struct drm_i915_file_private* file_priv; int client_list; } ;
struct TYPE_2__ {int lock; } ;
struct drm_i915_file_private {TYPE_1__ mm; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
i915_gem_request_remove_from_client(struct drm_i915_gem_request *request)
{
 struct drm_i915_file_private *file_priv = request->file_priv;

 if (!file_priv)
  return;

 spin_lock(&file_priv->mm.lock);
 if (request->file_priv) {
  list_del(&request->client_list);
  request->file_priv = ((void*)0);
 }
 spin_unlock(&file_priv->mm.lock);
}
