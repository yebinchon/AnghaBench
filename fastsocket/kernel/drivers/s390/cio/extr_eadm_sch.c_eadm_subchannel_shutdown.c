
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dummy; } ;


 int eadm_quiesce (struct subchannel*) ;

__attribute__((used)) static void eadm_subchannel_shutdown(struct subchannel *sch)
{
 eadm_quiesce(sch);
}
