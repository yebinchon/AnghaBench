
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int registers; int gtt; TYPE_1__* driver; } ;
struct TYPE_3__ {int (* cleanup ) () ;} ;


 int intel_gtt_teardown_scratch_page () ;
 TYPE_2__ intel_private ;
 int iounmap (int ) ;
 int stub1 () ;

__attribute__((used)) static void intel_gtt_cleanup(void)
{
 intel_private.driver->cleanup();

 iounmap(intel_private.gtt);
 iounmap(intel_private.registers);

 intel_gtt_teardown_scratch_page();
}
