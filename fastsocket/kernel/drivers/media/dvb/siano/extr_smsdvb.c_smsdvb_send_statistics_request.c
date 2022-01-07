
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_client_t {int tune_done; } ;
struct SmsMsgHdr_ST {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
typedef int Msg ;


 int DVBT_BDA_CONTROL_MSG_ID ;
 int HIF_TASK ;
 int MSG_SMS_GET_STATISTICS_REQ ;
 int smsdvb_sendrequest_and_wait (struct smsdvb_client_t*,struct SmsMsgHdr_ST*,int,int *) ;

__attribute__((used)) static int smsdvb_send_statistics_request(struct smsdvb_client_t *client)
{
 int rc;
 struct SmsMsgHdr_ST Msg = { MSG_SMS_GET_STATISTICS_REQ,
        DVBT_BDA_CONTROL_MSG_ID,
        HIF_TASK,
        sizeof(struct SmsMsgHdr_ST), 0 };

 rc = smsdvb_sendrequest_and_wait(client, &Msg, sizeof(Msg),
       &client->tune_done);

 return rc;
}
