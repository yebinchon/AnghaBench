
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
typedef enum ehca_qp_type { ____Placeholder_ehca_qp_type } ehca_qp_type ;


 int EINVAL ;





 int QPT_RC ;
 int QPT_SQP ;
 int QPT_UC ;
 int QPT_UD ;
 int ehca_gen_err (char*,int) ;

__attribute__((used)) static inline enum ehca_qp_type ib2ehcaqptype(enum ib_qp_type ibqptype)
{
 switch (ibqptype) {
 case 130:
 case 132:
  return QPT_SQP;
 case 131:
  return QPT_RC;
 case 129:
  return QPT_UC;
 case 128:
  return QPT_UD;
 default:
  ehca_gen_err("Invalid ibqptype=%x", ibqptype);
  return -EINVAL;
 }
}
