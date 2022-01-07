
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct zfcp_unit {int fcp_lun; int status; } ;
struct zfcp_port {int wwpn; int status; } ;
struct TYPE_3__ {unsigned long ref; unsigned long action; int fcp_lun; void* us; int wwpn; void* ps; void* as; void* need; void* want; } ;
struct TYPE_4__ {TYPE_1__ trigger; } ;
struct zfcp_dbf_rec_record {TYPE_2__ u; int id2; int id; } ;
struct zfcp_dbf {int rec_lock; int rec; struct zfcp_dbf_rec_record rec_buf; } ;
struct zfcp_adapter {int status; struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_ID_SIZE ;
 int ZFCP_REC_DBF_ID_TRIGGER ;
 void* atomic_read (int *) ;
 int debug_event (int ,int,struct zfcp_dbf_rec_record*,int) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_rec_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void zfcp_dbf_rec_trigger(char *id2, void *ref, u8 want, u8 need, void *action,
     struct zfcp_adapter *adapter, struct zfcp_port *port,
     struct zfcp_unit *unit)
{
 struct zfcp_dbf *dbf = adapter->dbf;
 struct zfcp_dbf_rec_record *r = &dbf->rec_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->rec_lock, flags);
 memset(r, 0, sizeof(*r));
 r->id = ZFCP_REC_DBF_ID_TRIGGER;
 memcpy(r->id2, id2, ZFCP_DBF_ID_SIZE);
 r->u.trigger.ref = (unsigned long)ref;
 r->u.trigger.want = want;
 r->u.trigger.need = need;
 r->u.trigger.action = (unsigned long)action;
 r->u.trigger.as = atomic_read(&adapter->status);
 if (port) {
  r->u.trigger.ps = atomic_read(&port->status);
  r->u.trigger.wwpn = port->wwpn;
 }
 if (unit) {
  r->u.trigger.us = atomic_read(&unit->status);
  r->u.trigger.fcp_lun = unit->fcp_lun;
 }
 debug_event(dbf->rec, action ? 1 : 4, r, sizeof(*r));
 spin_unlock_irqrestore(&dbf->rec_lock, flags);
}
