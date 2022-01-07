
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_conn {int dummy; } ;


 int bnx2i_get_rq_buf (struct bnx2i_conn*,char*,int) ;
 int bnx2i_put_rq_buf (struct bnx2i_conn*,int) ;

__attribute__((used)) static void bnx2i_unsol_pdu_adjust_rq(struct bnx2i_conn *bnx2i_conn)
{
 char dummy_rq_data[2];
 bnx2i_get_rq_buf(bnx2i_conn, dummy_rq_data, 1);
 bnx2i_put_rq_buf(bnx2i_conn, 1);
}
