
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union srp_iu {int dummy; } srp_iu ;
struct srp_login_req {int req_it_iu_len; int req_buf_fmt; int opcode; } ;
struct TYPE_4__ {struct srp_login_req login_req; } ;
struct TYPE_5__ {TYPE_1__ srp; } ;
struct srp_event_struct {TYPE_2__ iu; } ;
struct ibmvscsi_host_data {int dev; TYPE_3__* host; int request_limit; int pool; } ;
struct TYPE_6__ {int host_lock; } ;


 int BUG_ON (int) ;
 int SRP_BUF_FORMAT_DIRECT ;
 int SRP_BUF_FORMAT_INDIRECT ;
 int SRP_LOGIN_REQ ;
 int VIOSRP_SRP_FORMAT ;
 int atomic_set (int *,int ) ;
 int dev_info (int ,char*) ;
 struct srp_event_struct* get_event_struct (int *) ;
 int ibmvscsi_send_srp_event (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ;
 int init_event_struct (struct srp_event_struct*,int ,int ,int) ;
 int login_rsp ;
 int login_timeout ;
 int memset (struct srp_login_req*,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int send_srp_login(struct ibmvscsi_host_data *hostdata)
{
 int rc;
 unsigned long flags;
 struct srp_login_req *login;
 struct srp_event_struct *evt_struct = get_event_struct(&hostdata->pool);

 BUG_ON(!evt_struct);
 init_event_struct(evt_struct, login_rsp,
     VIOSRP_SRP_FORMAT, login_timeout);

 login = &evt_struct->iu.srp.login_req;
 memset(login, 0, sizeof(*login));
 login->opcode = SRP_LOGIN_REQ;
 login->req_it_iu_len = sizeof(union srp_iu);
 login->req_buf_fmt = SRP_BUF_FORMAT_DIRECT | SRP_BUF_FORMAT_INDIRECT;

 spin_lock_irqsave(hostdata->host->host_lock, flags);




 atomic_set(&hostdata->request_limit, 0);

 rc = ibmvscsi_send_srp_event(evt_struct, hostdata, login_timeout * 2);
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);
 dev_info(hostdata->dev, "sent SRP login\n");
 return rc;
}
