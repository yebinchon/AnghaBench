
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__ request; int * host_scribble; } ;
struct gdth_cmndinfo {int internal_command; } ;
struct completion {int dummy; } ;


 int TRACE2 (char*) ;
 int complete (struct completion*) ;
 struct gdth_cmndinfo* gdth_cmnd_priv (struct scsi_cmnd*) ;
 int gdth_put_cmndinfo (struct gdth_cmndinfo*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void gdth_scsi_done(struct scsi_cmnd *scp)
{
 struct gdth_cmndinfo *cmndinfo = gdth_cmnd_priv(scp);
 int internal_command = cmndinfo->internal_command;

 TRACE2(("gdth_scsi_done()\n"));

 gdth_put_cmndinfo(cmndinfo);
 scp->host_scribble = ((void*)0);

 if (internal_command)
  complete((struct completion *)scp->request);
 else
  scp->scsi_done(scp);
}
