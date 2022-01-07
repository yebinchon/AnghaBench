
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int dummy; } ;


 int BUG () ;

__attribute__((used)) static void drm_gem_object_ref_bug(struct kref *list_kref)
{
 BUG();
}
