
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int dummy; } ;
typedef enum action { ____Placeholder_action } action ;


 int DBMSG (char*) ;
 int IDE_DOORUNLOCK ;
 int IDE_EJECT ;
 int Ok ;
 int pd_send_command (struct pd_unit*,int,int ,int ,int ,int ,int ) ;
 int pd_wait_for (struct pd_unit*,int ,int ) ;

__attribute__((used)) static enum action pd_eject(struct pd_unit *disk)
{
 pd_wait_for(disk, 0, DBMSG("before unlock on eject"));
 pd_send_command(disk, 1, 0, 0, 0, 0, IDE_DOORUNLOCK);
 pd_wait_for(disk, 0, DBMSG("after unlock on eject"));
 pd_wait_for(disk, 0, DBMSG("before eject"));
 pd_send_command(disk, 0, 0, 0, 0, 0, IDE_EJECT);
 pd_wait_for(disk, 0, DBMSG("after eject"));
 return Ok;
}
