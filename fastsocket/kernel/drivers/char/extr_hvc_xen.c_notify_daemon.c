
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int evtchn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;


 int notify_remote_via_evtchn (int ) ;
 TYPE_3__* xen_start_info ;

__attribute__((used)) static inline void notify_daemon(void)
{

 notify_remote_via_evtchn(xen_start_info->console.domU.evtchn);
}
