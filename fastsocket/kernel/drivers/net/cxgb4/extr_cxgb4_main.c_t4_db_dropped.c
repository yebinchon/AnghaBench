
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int db_drop_task; } ;


 int schedule_work (int *) ;

void t4_db_dropped(struct adapter *adap)
{
 schedule_work(&adap->db_drop_task);
}
