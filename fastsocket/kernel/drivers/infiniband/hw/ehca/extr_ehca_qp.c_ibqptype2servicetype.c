
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int EINVAL ;







 int ST_RC ;
 int ST_UC ;
 int ST_UD ;
 int ehca_gen_err (char*,int) ;

__attribute__((used)) static inline int ibqptype2servicetype(enum ib_qp_type ibqptype)
{
 switch (ibqptype) {
 case 130:
 case 134:
  return ST_UD;
 case 131:
  return ST_RC;
 case 129:
  return ST_UC;
 case 128:
  return ST_UD;
 case 132:
  return -EINVAL;
 case 133:
  return -EINVAL;
 default:
  ehca_gen_err("Invalid ibqptype=%x", ibqptype);
  return -EINVAL;
 }
}
