
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_queue_wrapper {int work; struct _MPT_SCSI_HOST* hd; } ;
struct _MPT_SCSI_HOST {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct work_queue_wrapper* kmalloc (int,int ) ;
 int mptspi_dv_renegotiate_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void
mptspi_dv_renegotiate(struct _MPT_SCSI_HOST *hd)
{
 struct work_queue_wrapper *wqw = kmalloc(sizeof(*wqw), GFP_ATOMIC);

 if (!wqw)
  return;

 INIT_WORK(&wqw->work, mptspi_dv_renegotiate_work);
 wqw->hd = hd;

 schedule_work(&wqw->work);
}
