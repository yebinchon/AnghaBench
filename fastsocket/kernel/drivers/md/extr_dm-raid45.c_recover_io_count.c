
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {int sc; } ;
struct TYPE_2__ {scalar_t__ io_count; } ;
struct raid_set {TYPE_1__ recover; } ;


 scalar_t__ IO_RECOVER ;
 scalar_t__ IO_WORK ;
 struct raid_set* RS (int ) ;
 scalar_t__ StripeRecover (struct stripe*) ;
 int atomic_inc (scalar_t__) ;

__attribute__((used)) static void recover_io_count(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);

 atomic_inc(rs->recover.io_count +
     (StripeRecover(stripe) ? IO_RECOVER : IO_WORK));
}
