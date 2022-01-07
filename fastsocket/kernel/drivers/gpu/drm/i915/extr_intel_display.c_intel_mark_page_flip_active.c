
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_crtc {TYPE_1__* unpin_work; } ;
struct TYPE_2__ {int pending; } ;


 int INTEL_FLIP_PENDING ;
 int atomic_set (int *,int ) ;
 int smp_wmb () ;

__attribute__((used)) inline static void intel_mark_page_flip_active(struct intel_crtc *intel_crtc)
{

 smp_wmb();
 atomic_set(&intel_crtc->unpin_work->pending, INTEL_FLIP_PENDING);

 smp_wmb();
}
