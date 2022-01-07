
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf_hba_record {int tag2; int tag; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba_record hba_buf; } ;


 int ZFCP_DBF_TAG_SIZE ;
 int debug_event (int ,int ,struct zfcp_dbf_hba_record*,int) ;
 int memset (struct zfcp_dbf_hba_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char*,int ) ;

void zfcp_dbf_hba_base(struct zfcp_dbf *dbf, char *tag2)
{
 struct zfcp_dbf_hba_record *r = &dbf->hba_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(r, 0, sizeof(*r));
 strncpy(r->tag, "base", ZFCP_DBF_TAG_SIZE);
 strncpy(r->tag2, tag2, ZFCP_DBF_TAG_SIZE);
 debug_event(dbf->hba, 0, r, sizeof(*r));
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
