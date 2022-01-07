
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;
struct saa6588_command {unsigned int result; int * event_list; struct file* instance; } ;
struct file {struct saa7134_fh* private_data; } ;
typedef int poll_table ;


 unsigned int ENODEV ;
 int SAA6588_CMD_POLL ;
 int core ;
 int ioctl ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int ,struct saa6588_command*) ;

__attribute__((used)) static unsigned int radio_poll(struct file *file, poll_table *wait)
{
 struct saa7134_fh *fh = file->private_data;
 struct saa7134_dev *dev = fh->dev;
 struct saa6588_command cmd;

 cmd.instance = file;
 cmd.event_list = wait;
 cmd.result = -ENODEV;
 saa_call_all(dev, core, ioctl, SAA6588_CMD_POLL, &cmd);

 return cmd.result;
}
