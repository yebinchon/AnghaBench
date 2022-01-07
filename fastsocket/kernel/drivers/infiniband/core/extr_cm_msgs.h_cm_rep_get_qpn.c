
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_rep_msg {int dummy; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
typedef int __be32 ;


 int IB_QPT_XRC_INI ;
 int cm_rep_get_local_eecn (struct cm_rep_msg*) ;
 int cm_rep_get_local_qpn (struct cm_rep_msg*) ;

__attribute__((used)) static inline __be32 cm_rep_get_qpn(struct cm_rep_msg *rep_msg, enum ib_qp_type qp_type)
{
 return (qp_type == IB_QPT_XRC_INI) ?
  cm_rep_get_local_eecn(rep_msg) : cm_rep_get_local_qpn(rep_msg);
}
