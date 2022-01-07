
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_sport {int ibcq_aqp1; int * ibqp_sqp; } ;


 size_t IB_QPT_GSI ;
 int ehca_gen_err (char*,int) ;
 int ib_destroy_cq (int ) ;
 int ib_destroy_qp (int ) ;

__attribute__((used)) static int ehca_destroy_aqp1(struct ehca_sport *sport)
{
 int ret;

 ret = ib_destroy_qp(sport->ibqp_sqp[IB_QPT_GSI]);
 if (ret) {
  ehca_gen_err("Cannot destroy AQP1 QP. ret=%i", ret);
  return ret;
 }

 ret = ib_destroy_cq(sport->ibcq_aqp1);
 if (ret)
  ehca_gen_err("Cannot destroy AQP1 CQ. ret=%i", ret);

 return ret;
}
