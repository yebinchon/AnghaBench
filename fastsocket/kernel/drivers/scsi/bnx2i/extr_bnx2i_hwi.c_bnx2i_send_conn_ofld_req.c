
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int cnic_dev_type; } ;
struct bnx2i_endpoint {int dummy; } ;


 int BNX2I_NX2_DEV_57710 ;
 int bnx2i_570x_send_conn_ofld_req (struct bnx2i_hba*,struct bnx2i_endpoint*) ;
 int bnx2i_5771x_send_conn_ofld_req (struct bnx2i_hba*,struct bnx2i_endpoint*) ;
 scalar_t__ test_bit (int ,int *) ;

int bnx2i_send_conn_ofld_req(struct bnx2i_hba *hba, struct bnx2i_endpoint *ep)
{
 int rc;

 if (test_bit(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type))
  rc = bnx2i_5771x_send_conn_ofld_req(hba, ep);
 else
  rc = bnx2i_570x_send_conn_ofld_req(hba, ep);

 return rc;
}
