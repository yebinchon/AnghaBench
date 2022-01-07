
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int db_full_task; } ;


 int queue_work (int ,int *) ;
 int workq ;

void t4_db_full(struct adapter *adap)
{
 queue_work(workq, &adap->db_full_task);
}
