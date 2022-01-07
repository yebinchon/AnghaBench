
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srp_target_port {struct ib_cm_id* cm_id; TYPE_2__* srp_host; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_4__ {TYPE_1__* srp_dev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (struct ib_cm_id*) ;
 int PTR_ERR (struct ib_cm_id*) ;
 struct ib_cm_id* ib_create_cm_id (int ,int ,struct srp_target_port*) ;
 int ib_destroy_cm_id (struct ib_cm_id*) ;
 int srp_cm_handler ;

__attribute__((used)) static int srp_new_cm_id(struct srp_target_port *target)
{
 struct ib_cm_id *new_cm_id;

 new_cm_id = ib_create_cm_id(target->srp_host->srp_dev->dev,
        srp_cm_handler, target);
 if (IS_ERR(new_cm_id))
  return PTR_ERR(new_cm_id);

 if (target->cm_id)
  ib_destroy_cm_id(target->cm_id);
 target->cm_id = new_cm_id;

 return 0;
}
