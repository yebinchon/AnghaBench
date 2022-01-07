
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe {scalar_t__ lock; int sc; } ;
typedef int sector_t ;
struct TYPE_4__ {TYPE_1__* locking; } ;
struct TYPE_3__ {scalar_t__ (* lock ) (int ,int ) ;} ;


 int DM_RAID45_EX ;
 int DM_RAID45_SHARED ;
 int EPERM ;
 int READ ;
 TYPE_2__* RS (int ) ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static int
stripe_lock(struct stripe *stripe, int rw, sector_t key)
{
 stripe->lock = RS(stripe->sc)->locking->lock(key, rw == READ ? DM_RAID45_SHARED : DM_RAID45_EX);
 return stripe->lock ? 0 : -EPERM;
}
