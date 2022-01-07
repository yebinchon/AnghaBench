
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ib_sa_mcmember_rec {int mgid; int pkey; } ;
struct mcast_group {scalar_t__ state; scalar_t__ pkey_index; int work; TYPE_2__* port; int node; struct ib_sa_mcmember_rec rec; } ;
struct TYPE_4__ {int lock; int table; int port_num; TYPE_1__* dev; } ;
struct TYPE_3__ {int device; } ;


 scalar_t__ MCAST_BUSY ;
 scalar_t__ MCAST_INVALID_PKEY_INDEX ;
 int be16_to_cpu (int ) ;
 int ib_find_pkey (int ,int ,int ,scalar_t__*) ;
 int mcast_insert (TYPE_2__*,struct mcast_group*,int) ;
 int mcast_work_handler (int *) ;
 int memcmp (int *,int *,int) ;
 int mgid0 ;
 int process_join_error (struct mcast_group*,int) ;
 int rb_erase (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void join_handler(int status, struct ib_sa_mcmember_rec *rec,
    void *context)
{
 struct mcast_group *group = context;
 u16 pkey_index = MCAST_INVALID_PKEY_INDEX;

 if (status)
  process_join_error(group, status);
 else {
  ib_find_pkey(group->port->dev->device, group->port->port_num,
        be16_to_cpu(rec->pkey), &pkey_index);

  spin_lock_irq(&group->port->lock);
  group->rec = *rec;
  if (group->state == MCAST_BUSY &&
      group->pkey_index == MCAST_INVALID_PKEY_INDEX)
   group->pkey_index = pkey_index;
  if (!memcmp(&mgid0, &group->rec.mgid, sizeof mgid0)) {
   rb_erase(&group->node, &group->port->table);
   mcast_insert(group->port, group, 1);
  }
  spin_unlock_irq(&group->port->lock);
 }
 mcast_work_handler(&group->work);
}
