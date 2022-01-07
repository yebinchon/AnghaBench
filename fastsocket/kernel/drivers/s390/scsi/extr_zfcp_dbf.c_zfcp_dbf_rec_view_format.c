
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int step; int status; int fsf_req; int action; } ;
struct TYPE_8__ {int us; int ps; int as; int fcp_lun; int wwpn; int need; int want; int action; int ref; } ;
struct TYPE_7__ {int fcp_lun; int wwpn; int d_id; int erp_count; int status; int ref; } ;
struct TYPE_6__ {int running; int ready; int total; } ;
struct TYPE_10__ {TYPE_4__ action; TYPE_3__ trigger; TYPE_2__ target; TYPE_1__ thread; } ;
struct zfcp_dbf_rec_record {size_t id; TYPE_5__ u; int id2; } ;
struct debug_view {int dummy; } ;
typedef int debug_info_t ;


 int ZFCP_DBF_ID_SIZE ;




 int memcpy (char*,int ,int) ;
 int sprintf (char*,char*) ;
 int zfcp_dbf_out (char**,char*,char*,int ) ;
 int zfcp_dbf_outs (char**,char*,char*) ;
 char** zfcp_dbf_rec_tags ;

__attribute__((used)) static int zfcp_dbf_rec_view_format(debug_info_t *id, struct debug_view *view,
        char *buf, const char *_rec)
{
 struct zfcp_dbf_rec_record *r = (struct zfcp_dbf_rec_record *)_rec;
 char *p = buf;
 char hint[ZFCP_DBF_ID_SIZE + 1];

 memcpy(hint, r->id2, ZFCP_DBF_ID_SIZE);
 hint[ZFCP_DBF_ID_SIZE] = 0;
 zfcp_dbf_outs(&p, "tag", zfcp_dbf_rec_tags[r->id]);
 zfcp_dbf_outs(&p, "hint", hint);
 switch (r->id) {
 case 129:
  zfcp_dbf_out(&p, "total", "%d", r->u.thread.total);
  zfcp_dbf_out(&p, "ready", "%d", r->u.thread.ready);
  zfcp_dbf_out(&p, "running", "%d", r->u.thread.running);
  break;
 case 130:
  zfcp_dbf_out(&p, "reference", "0x%016Lx", r->u.target.ref);
  zfcp_dbf_out(&p, "status", "0x%08x", r->u.target.status);
  zfcp_dbf_out(&p, "erp_count", "%d", r->u.target.erp_count);
  zfcp_dbf_out(&p, "d_id", "0x%06x", r->u.target.d_id);
  zfcp_dbf_out(&p, "wwpn", "0x%016Lx", r->u.target.wwpn);
  zfcp_dbf_out(&p, "fcp_lun", "0x%016Lx", r->u.target.fcp_lun);
  break;
 case 128:
  zfcp_dbf_out(&p, "reference", "0x%016Lx", r->u.trigger.ref);
  zfcp_dbf_out(&p, "erp_action", "0x%016Lx", r->u.trigger.action);
  zfcp_dbf_out(&p, "requested", "%d", r->u.trigger.want);
  zfcp_dbf_out(&p, "executed", "%d", r->u.trigger.need);
  zfcp_dbf_out(&p, "wwpn", "0x%016Lx", r->u.trigger.wwpn);
  zfcp_dbf_out(&p, "fcp_lun", "0x%016Lx", r->u.trigger.fcp_lun);
  zfcp_dbf_out(&p, "adapter_status", "0x%08x", r->u.trigger.as);
  zfcp_dbf_out(&p, "port_status", "0x%08x", r->u.trigger.ps);
  zfcp_dbf_out(&p, "unit_status", "0x%08x", r->u.trigger.us);
  break;
 case 131:
  zfcp_dbf_out(&p, "erp_action", "0x%016Lx", r->u.action.action);
  zfcp_dbf_out(&p, "fsf_req", "0x%016Lx", r->u.action.fsf_req);
  zfcp_dbf_out(&p, "status", "0x%08Lx", r->u.action.status);
  zfcp_dbf_out(&p, "step", "0x%08Lx", r->u.action.step);
  break;
 }
 p += sprintf(p, "\n");
 return p - buf;
}
