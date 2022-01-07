
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_command {int* cmd; scalar_t__ buflen; } ;
struct TYPE_2__ {int pending; int status; int cd_info; } ;


 int EIO ;
 int ENOMEM ;
 int GDROM_DEFAULT_TIMEOUT ;
 int GFP_KERNEL ;
 int command_queue ;
 TYPE_1__ gd ;
 int gdrom_getsense (int *) ;
 int gdrom_packetcommand (int ,struct packet_command*) ;
 int kfree (struct packet_command*) ;
 struct packet_command* kzalloc (int,int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int gdrom_preparedisk_cmd(void)
{
 struct packet_command *spin_command;
 spin_command = kzalloc(sizeof(struct packet_command), GFP_KERNEL);
 if (!spin_command)
  return -ENOMEM;
 spin_command->cmd[0] = 0x70;
 spin_command->cmd[2] = 0x1f;
 spin_command->buflen = 0;
 gd.pending = 1;
 gdrom_packetcommand(gd.cd_info, spin_command);

 wait_event_interruptible_timeout(command_queue, gd.pending == 0,
  GDROM_DEFAULT_TIMEOUT);
 gd.pending = 0;
 kfree(spin_command);
 if (gd.status & 0x01) {

  gdrom_getsense(((void*)0));
  return -EIO;
 }
 return 0;
}
