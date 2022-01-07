
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_fsf_req {scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;
struct fcp_logo {int nport_wwpn; } ;


 int zfcp_fc_incoming_wwpn (struct zfcp_fsf_req*,int ) ;

__attribute__((used)) static void zfcp_fc_incoming_logo(struct zfcp_fsf_req *req)
{
 struct fsf_status_read_buffer *status_buffer =
  (struct fsf_status_read_buffer *)req->data;
 struct fcp_logo *els_logo =
  (struct fcp_logo *) status_buffer->payload.data;

 zfcp_fc_incoming_wwpn(req, els_logo->nport_wwpn);
}
