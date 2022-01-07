
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {TYPE_10__* dev; int list; } ;
typedef TYPE_1__ slave_t ;
struct TYPE_13__ {int num_slaves; int all_slaves; } ;
typedef TYPE_2__ slave_queue_t ;
struct TYPE_11__ {int flags; } ;


 int ENOSPC ;
 int IFF_SLAVE ;
 TYPE_1__* __eql_find_slave_dev (TYPE_2__*,TYPE_10__*) ;
 int eql_is_full (TYPE_2__*) ;
 int eql_kill_one_slave (TYPE_2__*,TYPE_1__*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int __eql_insert_slave(slave_queue_t *queue, slave_t *slave)
{
 if (!eql_is_full(queue)) {
  slave_t *duplicate_slave = ((void*)0);

  duplicate_slave = __eql_find_slave_dev(queue, slave->dev);
  if (duplicate_slave)
   eql_kill_one_slave(queue, duplicate_slave);

  list_add(&slave->list, &queue->all_slaves);
  queue->num_slaves++;
  slave->dev->flags |= IFF_SLAVE;

  return 0;
 }

 return -ENOSPC;
}
