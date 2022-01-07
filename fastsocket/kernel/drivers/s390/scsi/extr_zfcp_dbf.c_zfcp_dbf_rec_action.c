
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_erp_action {scalar_t__ fsf_req; int step; int status; TYPE_1__* adapter; } ;
struct TYPE_5__ {unsigned long action; unsigned long fsf_req; int step; int status; } ;
struct TYPE_6__ {TYPE_2__ action; } ;
struct zfcp_dbf_rec_record {TYPE_3__ u; int id2; int id; } ;
struct zfcp_dbf {int rec_lock; int rec; struct zfcp_dbf_rec_record rec_buf; } ;
struct TYPE_4__ {struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_ID_SIZE ;
 int ZFCP_REC_DBF_ID_ACTION ;
 int debug_event (int ,int,struct zfcp_dbf_rec_record*,int) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_rec_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void zfcp_dbf_rec_action(char *id2, struct zfcp_erp_action *erp_action)
{
 struct zfcp_dbf *dbf = erp_action->adapter->dbf;
 struct zfcp_dbf_rec_record *r = &dbf->rec_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->rec_lock, flags);
 memset(r, 0, sizeof(*r));
 r->id = ZFCP_REC_DBF_ID_ACTION;
 memcpy(r->id2, id2, ZFCP_DBF_ID_SIZE);
 r->u.action.action = (unsigned long)erp_action;
 r->u.action.status = erp_action->status;
 r->u.action.step = erp_action->step;
 r->u.action.fsf_req = (unsigned long)erp_action->fsf_req;
 debug_event(dbf->rec, 5, r, sizeof(*r));
 spin_unlock_irqrestore(&dbf->rec_lock, flags);
}
