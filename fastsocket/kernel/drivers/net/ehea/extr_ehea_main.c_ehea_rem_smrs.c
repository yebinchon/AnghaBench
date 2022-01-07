
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port_res {int recv_mr; int send_mr; } ;


 int EIO ;
 scalar_t__ ehea_rem_mr (int *) ;

__attribute__((used)) static int ehea_rem_smrs(struct ehea_port_res *pr)
{
 if ((ehea_rem_mr(&pr->send_mr))
     || (ehea_rem_mr(&pr->recv_mr)))
  return -EIO;
 else
  return 0;
}
