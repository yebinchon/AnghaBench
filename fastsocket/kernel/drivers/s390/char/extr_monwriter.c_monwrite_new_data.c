
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monwrite_hdr {int mon_function; } ;
struct mon_private {struct mon_buf* current_buf; struct monwrite_hdr hdr; } ;
struct mon_buf {int diag_done; struct mon_buf* data; int list; } ;


 int APPLDATA_GEN_EVENT_REC ;
 int APPLDATA_START_CONFIG_REC ;
 int APPLDATA_START_INTERVAL_REC ;
 int BUG () ;



 int kfree (struct mon_buf*) ;
 int list_del (int *) ;
 int monwrite_diag (struct monwrite_hdr*,struct mon_buf*,int ) ;

__attribute__((used)) static int monwrite_new_data(struct mon_private *monpriv)
{
 struct monwrite_hdr *monhdr = &monpriv->hdr;
 struct mon_buf *monbuf = monpriv->current_buf;
 int rc = 0;

 switch (monhdr->mon_function) {
 case 128:
  if (!monbuf->diag_done) {
   rc = monwrite_diag(monhdr, monbuf->data,
        APPLDATA_START_INTERVAL_REC);
   monbuf->diag_done = 1;
  }
  break;
 case 129:
  if (!monbuf->diag_done) {
   rc = monwrite_diag(monhdr, monbuf->data,
        APPLDATA_START_CONFIG_REC);
   monbuf->diag_done = 1;
  }
  break;
 case 130:
  rc = monwrite_diag(monhdr, monbuf->data,
       APPLDATA_GEN_EVENT_REC);
  list_del(&monpriv->current_buf->list);
  kfree(monpriv->current_buf->data);
  kfree(monpriv->current_buf);
  monpriv->current_buf = ((void*)0);
  break;
 default:

  BUG();
 }
 return rc;
}
