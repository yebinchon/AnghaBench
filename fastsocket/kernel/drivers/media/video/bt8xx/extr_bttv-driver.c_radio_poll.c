
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa6588_command {unsigned int result; int * event_list; struct file* instance; } ;
struct file {struct bttv_fh* private_data; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int dummy; } ;
typedef int poll_table ;


 unsigned int ENODEV ;
 int SAA6588_CMD_POLL ;
 int bttv_call_all (struct bttv*,int ,int ,int ,struct saa6588_command*) ;
 int core ;
 int ioctl ;

__attribute__((used)) static unsigned int radio_poll(struct file *file, poll_table *wait)
{
 struct bttv_fh *fh = file->private_data;
 struct bttv *btv = fh->btv;
 struct saa6588_command cmd;
 cmd.instance = file;
 cmd.event_list = wait;
 cmd.result = -ENODEV;
 bttv_call_all(btv, core, ioctl, SAA6588_CMD_POLL, &cmd);

 return cmd.result;
}
