
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int changed; } ;
typedef enum action { ____Placeholder_action } action ;


 int DBMSG (char*) ;
 int ERR_MC ;
 int IDE_ACKCHANGE ;
 int IDE_READ_VRFY ;
 int Ok ;
 int STAT_ERR ;
 int STAT_READY ;
 int pd_send_command (struct pd_unit*,int,int,int ,int ,int ,int ) ;
 int pd_wait_for (struct pd_unit*,int ,int ) ;

__attribute__((used)) static enum action pd_media_check(struct pd_unit *disk)
{
 int r = pd_wait_for(disk, STAT_READY, DBMSG("before media_check"));
 if (!(r & STAT_ERR)) {
  pd_send_command(disk, 1, 1, 0, 0, 0, IDE_READ_VRFY);
  r = pd_wait_for(disk, STAT_READY, DBMSG("RDY after READ_VRFY"));
 } else
  disk->changed = 1;
 if (r & ERR_MC) {
  disk->changed = 1;
  pd_send_command(disk, 1, 0, 0, 0, 0, IDE_ACKCHANGE);
  pd_wait_for(disk, STAT_READY, DBMSG("RDY after ACKCHANGE"));
  pd_send_command(disk, 1, 1, 0, 0, 0, IDE_READ_VRFY);
  r = pd_wait_for(disk, STAT_READY, DBMSG("RDY after VRFY"));
 }
 return Ok;
}
