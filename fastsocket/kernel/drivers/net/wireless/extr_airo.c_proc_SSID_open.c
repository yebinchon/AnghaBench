
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {char* rbuffer; int maxwritelen; int readlen; int on_close; int * wbuffer; scalar_t__ writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {char* private_data; } ;
struct airo_info {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ssids; } ;
struct TYPE_4__ {int * ssid; int len; } ;
typedef TYPE_2__ SsidRid ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct proc_dir_entry* PDE (struct inode*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 void* kzalloc (int,int ) ;
 size_t le16_to_cpu (int ) ;
 int proc_SSID_on_close ;
 int readSsidRid (struct airo_info*,TYPE_2__*) ;
 int strlen (char*) ;

__attribute__((used)) static int proc_SSID_open(struct inode *inode, struct file *file)
{
 struct proc_data *data;
 struct proc_dir_entry *dp = PDE(inode);
 struct net_device *dev = dp->data;
 struct airo_info *ai = dev->ml_priv;
 int i;
 char *ptr;
 SsidRid SSID_rid;

 if ((file->private_data = kzalloc(sizeof(struct proc_data ), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;
 data = (struct proc_data *)file->private_data;
 if ((data->rbuffer = kmalloc( 104, GFP_KERNEL )) == ((void*)0)) {
  kfree (file->private_data);
  return -ENOMEM;
 }
 data->writelen = 0;
 data->maxwritelen = 33*3;

 if ((data->wbuffer = kzalloc(33*3 + 1, GFP_KERNEL)) == ((void*)0)) {
  kfree (data->rbuffer);
  kfree (file->private_data);
  return -ENOMEM;
 }
 data->on_close = proc_SSID_on_close;

 readSsidRid(ai, &SSID_rid);
 ptr = data->rbuffer;
 for (i = 0; i < 3; i++) {
  int j;
  size_t len = le16_to_cpu(SSID_rid.ssids[i].len);
  if (!len)
   break;
  if (len > 32)
   len = 32;
  for (j = 0; j < len && SSID_rid.ssids[i].ssid[j]; j++)
   *ptr++ = SSID_rid.ssids[i].ssid[j];
  *ptr++ = '\n';
 }
 *ptr = '\0';
 data->readlen = strlen( data->rbuffer );
 return 0;
}
