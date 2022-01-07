
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {scalar_t__ crtc; } ;


 int error (char*) ;

__attribute__((used)) static inline int
init_crtc(struct nvbios_init *init)
{
 if (init->crtc >= 0)
  return init->crtc;
 error("script needs crtc\n");
 return 0;
}
