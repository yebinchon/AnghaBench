
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ __u64 ;
struct TYPE_2__ {scalar_t__ last_update_timer; int system_timer; } ;


 TYPE_1__ S390_lowcore ;

__attribute__((used)) static inline void set_vtimer(__u64 expires)
{
 __u64 timer;

 asm volatile ("  STPT %0\n"
        "  SPT %1"
        : "=m" (timer) : "m" (expires) );
 S390_lowcore.system_timer += S390_lowcore.last_update_timer - timer;
 S390_lowcore.last_update_timer = expires;
}
