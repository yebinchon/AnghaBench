
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct zfcp_send_els {TYPE_2__* resp; TYPE_2__* req; TYPE_1__* adapter; int d_id; } ;
struct zfcp_fsf_req {scalar_t__ data; } ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int scsi_host; } ;


 int fc_host_port_id (int ) ;
 scalar_t__ sg_virt (TYPE_2__*) ;
 int zfcp_dbf_san_els (char*,int,struct zfcp_fsf_req*,int ,int ,int ,scalar_t__,int ) ;

void zfcp_dbf_san_els_response(struct zfcp_fsf_req *fsf_req)
{
 struct zfcp_send_els *els = (struct zfcp_send_els *)fsf_req->data;

 zfcp_dbf_san_els("rels", 2, fsf_req, els->d_id,
          fc_host_port_id(els->adapter->scsi_host),
          *(u8 *)sg_virt(els->req), sg_virt(els->resp),
          els->resp->length);
}
