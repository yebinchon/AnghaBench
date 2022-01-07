
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct zfcp_fsf_req {int adapter; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;
struct fcp_rscn_head {int payload_len; } ;
struct fcp_rscn_element {size_t addr_format; } ;


 int FCH_EVT_RSCN ;
 int _zfcp_fc_incoming_rscn (struct zfcp_fsf_req*,int ,struct fcp_rscn_element*) ;
 int * rscn_range_mask ;
 int zfcp_fc_conditional_port_scan (int ) ;
 int zfcp_fc_enqueue_event (int ,int ,int ) ;

__attribute__((used)) static void zfcp_fc_incoming_rscn(struct zfcp_fsf_req *fsf_req)
{
 struct fsf_status_read_buffer *status_buffer = (void *)fsf_req->data;
 struct fcp_rscn_head *fcp_rscn_head;
 struct fcp_rscn_element *fcp_rscn_element;
 u16 i;
 u16 no_entries;
 u32 range_mask;

 fcp_rscn_head = (struct fcp_rscn_head *) status_buffer->payload.data;
 fcp_rscn_element = (struct fcp_rscn_element *) fcp_rscn_head;


 no_entries = fcp_rscn_head->payload_len /
   sizeof(struct fcp_rscn_element);

 for (i = 1; i < no_entries; i++) {

  fcp_rscn_element++;
  range_mask = rscn_range_mask[fcp_rscn_element->addr_format];
  _zfcp_fc_incoming_rscn(fsf_req, range_mask, fcp_rscn_element);
  zfcp_fc_enqueue_event(fsf_req->adapter, FCH_EVT_RSCN,
          *(u32 *)fcp_rscn_element);
 }
 zfcp_fc_conditional_port_scan(fsf_req->adapter);
}
