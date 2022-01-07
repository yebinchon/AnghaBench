
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_qp_info {int snoop_table; int qp; } ;


 int ib_destroy_qp (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void destroy_mad_qp(struct ib_mad_qp_info *qp_info)
{
 if (!qp_info->qp)
  return;

 ib_destroy_qp(qp_info->qp);
 kfree(qp_info->snoop_table);
}
