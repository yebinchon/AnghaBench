
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2i_hba {int dummy; } ;
struct bnx2i_conn {TYPE_1__* cls_conn; } ;
struct TYPE_2__ {int dd_data; } ;


 int ISCSI_ERR_CONN_FAILED ;
 int iscsi_conn_failure (int ,int ) ;

__attribute__((used)) static void bnx2i_recovery_que_add_conn(struct bnx2i_hba *hba,
     struct bnx2i_conn *bnx2i_conn)
{
 iscsi_conn_failure(bnx2i_conn->cls_conn->dd_data,
      ISCSI_ERR_CONN_FAILED);
}
