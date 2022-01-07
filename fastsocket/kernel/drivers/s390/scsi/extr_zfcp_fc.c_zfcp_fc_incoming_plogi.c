
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;
struct TYPE_4__ {int wwpn; } ;
struct fsf_plogi {TYPE_2__ serv_param; } ;


 int zfcp_fc_incoming_wwpn (struct zfcp_fsf_req*,int ) ;

__attribute__((used)) static void zfcp_fc_incoming_plogi(struct zfcp_fsf_req *req)
{
 struct fsf_status_read_buffer *status_buffer =
  (struct fsf_status_read_buffer *)req->data;
 struct fsf_plogi *els_plogi =
  (struct fsf_plogi *) status_buffer->payload.data;

 zfcp_fc_incoming_wwpn(req, els_plogi->serv_param.wwpn);
}
