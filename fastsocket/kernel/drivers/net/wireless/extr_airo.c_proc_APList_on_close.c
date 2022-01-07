
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {int writelen; scalar_t__* wbuffer; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct airo_info {int dummy; } ;
struct TYPE_4__ {int** ap; int len; } ;
typedef int APList_rid ;
typedef TYPE_1__ APListRid ;


 struct proc_dir_entry* PDE (struct inode*) ;
 int cpu_to_le16 (int) ;
 int disable_MAC (struct airo_info*,int) ;
 int enable_MAC (struct airo_info*,int) ;
 int hexVal (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int writeAPListRid (struct airo_info*,TYPE_1__*,int) ;

__attribute__((used)) static void proc_APList_on_close( struct inode *inode, struct file *file ) {
 struct proc_data *data = (struct proc_data *)file->private_data;
 struct proc_dir_entry *dp = PDE(inode);
 struct net_device *dev = dp->data;
 struct airo_info *ai = dev->ml_priv;
 APListRid APList_rid;
 int i;

 if ( !data->writelen ) return;

 memset( &APList_rid, 0, sizeof(APList_rid) );
 APList_rid.len = cpu_to_le16(sizeof(APList_rid));

 for( i = 0; i < 4 && data->writelen >= (i+1)*6*3; i++ ) {
  int j;
  for( j = 0; j < 6*3 && data->wbuffer[j+i*6*3]; j++ ) {
   switch(j%3) {
   case 0:
    APList_rid.ap[i][j/3]=
     hexVal(data->wbuffer[j+i*6*3])<<4;
    break;
   case 1:
    APList_rid.ap[i][j/3]|=
     hexVal(data->wbuffer[j+i*6*3]);
    break;
   }
  }
 }
 disable_MAC(ai, 1);
 writeAPListRid(ai, &APList_rid, 1);
 enable_MAC(ai, 1);
}
