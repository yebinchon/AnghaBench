
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {char* rbuffer; int maxwritelen; int readlen; int on_close; int * wbuffer; scalar_t__ writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {char* private_data; } ;
struct airo_info {int dummy; } ;
struct TYPE_3__ {int ** ap; } ;
typedef TYPE_1__ APListRid ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct proc_dir_entry* PDE (struct inode*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 void* kzalloc (int,int ) ;
 int proc_APList_on_close ;
 int readAPListRid (struct airo_info*,TYPE_1__*) ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static int proc_APList_open( struct inode *inode, struct file *file ) {
 struct proc_data *data;
 struct proc_dir_entry *dp = PDE(inode);
 struct net_device *dev = dp->data;
 struct airo_info *ai = dev->ml_priv;
 int i;
 char *ptr;
 APListRid APList_rid;

 if ((file->private_data = kzalloc(sizeof(struct proc_data ), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;
 data = (struct proc_data *)file->private_data;
 if ((data->rbuffer = kmalloc( 104, GFP_KERNEL )) == ((void*)0)) {
  kfree (file->private_data);
  return -ENOMEM;
 }
 data->writelen = 0;
 data->maxwritelen = 4*6*3;
 if ((data->wbuffer = kzalloc( data->maxwritelen, GFP_KERNEL )) == ((void*)0)) {
  kfree (data->rbuffer);
  kfree (file->private_data);
  return -ENOMEM;
 }
 data->on_close = proc_APList_on_close;

 readAPListRid(ai, &APList_rid);
 ptr = data->rbuffer;
 for( i = 0; i < 4; i++ ) {

  if ( !*(int*)APList_rid.ap[i] &&
       !*(int*)&APList_rid.ap[i][2]) break;
  ptr += sprintf(ptr, "%pM\n", APList_rid.ap[i]);
 }
 if (i==0) ptr += sprintf(ptr, "Not using specific APs\n");

 *ptr = '\0';
 data->readlen = strlen( data->rbuffer );
 return 0;
}
