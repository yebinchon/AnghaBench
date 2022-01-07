
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int d_id; int ls_code; } ;
struct TYPE_8__ {int wwpn; int fcp_lun; int port_handle; int lun_handle; } ;
struct TYPE_7__ {int wwpn; int d_id; int port_handle; } ;
struct TYPE_6__ {int data_dir; int cmnd; int serial; } ;
struct TYPE_10__ {TYPE_4__ els; TYPE_3__ unit; TYPE_2__ port; TYPE_1__ fcp; } ;
struct zfcp_dbf_hba_record_response {int fsf_command; int fsf_reqid; int fsf_seqno; int fsf_prot_status; int fsf_status; int fsf_req_status; int sbal_first; int sbal_last; int sbal_response; int pool; TYPE_5__ u; int fsf_status_qual; int fsf_prot_status_qual; int fsf_issued; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int FSF_PROT_STATUS_QUAL_SIZE ;
 int FSF_STATUS_QUALIFIER_SIZE ;
 int ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT ;
 int sprintf (char*,char*) ;
 int stck_to_timespec (int ,struct timespec*) ;
 int zfcp_dbf_out (char**,char*,char*,int,...) ;
 int zfcp_dbf_outd (char**,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void zfcp_dbf_hba_view_response(char **p,
           struct zfcp_dbf_hba_record_response *r)
{
 struct timespec t;

 zfcp_dbf_out(p, "fsf_command", "0x%08x", r->fsf_command);
 zfcp_dbf_out(p, "fsf_reqid", "0x%0Lx", r->fsf_reqid);
 zfcp_dbf_out(p, "fsf_seqno", "0x%08x", r->fsf_seqno);
 stck_to_timespec(r->fsf_issued, &t);
 zfcp_dbf_out(p, "fsf_issued", "%011lu:%06lu", t.tv_sec, t.tv_nsec);
 zfcp_dbf_out(p, "fsf_prot_status", "0x%08x", r->fsf_prot_status);
 zfcp_dbf_out(p, "fsf_status", "0x%08x", r->fsf_status);
 zfcp_dbf_outd(p, "fsf_prot_status_qual", r->fsf_prot_status_qual,
        FSF_PROT_STATUS_QUAL_SIZE, 0, FSF_PROT_STATUS_QUAL_SIZE);
 zfcp_dbf_outd(p, "fsf_status_qual", r->fsf_status_qual,
        FSF_STATUS_QUALIFIER_SIZE, 0, FSF_STATUS_QUALIFIER_SIZE);
 zfcp_dbf_out(p, "fsf_req_status", "0x%08x", r->fsf_req_status);
 zfcp_dbf_out(p, "sbal_first", "0x%02x", r->sbal_first);
 zfcp_dbf_out(p, "sbal_last", "0x%02x", r->sbal_last);
 zfcp_dbf_out(p, "sbal_response", "0x%02x", r->sbal_response);
 zfcp_dbf_out(p, "pool", "0x%02x", r->pool);

 switch (r->fsf_command) {
 case 133:
  if (r->fsf_req_status & ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT)
   break;
  zfcp_dbf_out(p, "data_direction", "0x%04x", r->u.fcp.data_dir);
  zfcp_dbf_out(p, "scsi_cmnd", "0x%0Lx", r->u.fcp.cmnd);
  zfcp_dbf_out(p, "scsi_serial", "0x%016Lx", r->u.fcp.serial);
  p += sprintf(*p, "\n");
  break;

 case 131:
 case 137:
 case 138:
  zfcp_dbf_out(p, "wwpn", "0x%016Lx", r->u.port.wwpn);
  zfcp_dbf_out(p, "d_id", "0x%06x", r->u.port.d_id);
  zfcp_dbf_out(p, "port_handle", "0x%08x", r->u.port.port_handle);
  break;

 case 132:
 case 139:
  zfcp_dbf_out(p, "wwpn", "0x%016Lx", r->u.unit.wwpn);
  zfcp_dbf_out(p, "fcp_lun", "0x%016Lx", r->u.unit.fcp_lun);
  zfcp_dbf_out(p, "port_handle", "0x%08x", r->u.unit.port_handle);
  zfcp_dbf_out(p, "lun_handle", "0x%08x", r->u.unit.lun_handle);
  break;

 case 130:
  zfcp_dbf_out(p, "d_id", "0x%06x", r->u.els.d_id);
  zfcp_dbf_out(p, "ls_code", "0x%02x", r->u.els.ls_code);
  break;

 case 140:
 case 129:
 case 135:
 case 134:
 case 136:
 case 128:
  break;
 }
}
