
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_dbf {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; } ;


 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_dbf_rec_thread (char*,struct zfcp_dbf*) ;

void zfcp_dbf_rec_thread_lock(char *id2, struct zfcp_dbf *dbf)
{
 struct zfcp_adapter *adapter = dbf->adapter;
 unsigned long flags;

 read_lock_irqsave(&adapter->erp_lock, flags);
 zfcp_dbf_rec_thread(id2, dbf);
 read_unlock_irqrestore(&adapter->erp_lock, flags);
}
