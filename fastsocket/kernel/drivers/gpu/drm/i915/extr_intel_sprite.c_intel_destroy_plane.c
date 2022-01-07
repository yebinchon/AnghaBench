
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane {int dummy; } ;
struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int intel_disable_plane (struct drm_plane*) ;
 int kfree (struct intel_plane*) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static void intel_destroy_plane(struct drm_plane *plane)
{
 struct intel_plane *intel_plane = to_intel_plane(plane);
 intel_disable_plane(plane);
 drm_plane_cleanup(plane);
 kfree(intel_plane);
}
