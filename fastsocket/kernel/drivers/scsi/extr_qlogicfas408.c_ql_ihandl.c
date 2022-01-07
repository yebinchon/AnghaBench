
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;int result; } ;
struct qlogicfas408_priv {int qbase; struct scsi_cmnd* qlcmd; } ;
struct Scsi_Host {int dummy; } ;


 int REG0 ;
 struct qlogicfas408_priv* get_priv_by_host (struct Scsi_Host*) ;
 int inb (int) ;
 int ql_pcmd (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void ql_ihandl(void *dev_id)
{
 struct scsi_cmnd *icmd;
 struct Scsi_Host *host = dev_id;
 struct qlogicfas408_priv *priv = get_priv_by_host(host);
 int qbase = priv->qbase;
 REG0;

 if (!(inb(qbase + 4) & 0x80))
  return;

 if (priv->qlcmd == ((void*)0)) {
  int i;
  i = 16;
  while (i-- && inb(qbase + 5));
  return;
 }
 icmd = priv->qlcmd;
 icmd->result = ql_pcmd(icmd);
 priv->qlcmd = ((void*)0);




 (icmd->scsi_done) (icmd);
}
