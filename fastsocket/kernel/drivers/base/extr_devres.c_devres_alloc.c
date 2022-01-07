
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devres {void* data; } ;
typedef int gfp_t ;
typedef int dr_release_t ;


 struct devres* alloc_dr (int ,size_t,int ) ;
 scalar_t__ unlikely (int) ;

void * devres_alloc(dr_release_t release, size_t size, gfp_t gfp)
{
 struct devres *dr;

 dr = alloc_dr(release, size, gfp);
 if (unlikely(!dr))
  return ((void*)0);
 return dr->data;
}
