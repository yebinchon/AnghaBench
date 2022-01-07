
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cm_id {int dummy; } ;


 int cm_destroy_id (struct ib_cm_id*,int ) ;

void ib_destroy_cm_id(struct ib_cm_id *cm_id)
{
 cm_destroy_id(cm_id, 0);
}
