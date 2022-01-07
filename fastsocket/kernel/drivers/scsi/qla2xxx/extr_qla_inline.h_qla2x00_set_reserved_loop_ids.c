
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int loop_id_map; } ;


 int BROADCAST ;
 scalar_t__ IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int MANAGEMENT_SERVER ;
 int SNS_FIRST_LOOP_ID ;
 int set_bit (int,int ) ;

__attribute__((used)) static inline void
qla2x00_set_reserved_loop_ids(struct qla_hw_data *ha)
{
 int i;

 if (IS_FWI2_CAPABLE(ha))
  return;

 for (i = 0; i < SNS_FIRST_LOOP_ID; i++)
  set_bit(i, ha->loop_id_map);
 set_bit(MANAGEMENT_SERVER, ha->loop_id_map);
 set_bit(BROADCAST, ha->loop_id_map);
}
