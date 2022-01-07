
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {int readlen; int * rbuffer; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {int * private_data; } ;
struct airo_info {TYPE_1__* dev; } ;
typedef int __le32 ;
struct TYPE_5__ {int len; int * vals; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ StatsRid ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct proc_dir_entry* PDE (struct inode*) ;
 int airo_print_warn (int ,char*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int * kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int readStatsRid (struct airo_info*,TYPE_2__*,int ,int) ;
 scalar_t__ sprintf (int *,char*,char*,int) ;
 char** statsLabels ;
 int strlen (char*) ;

__attribute__((used)) static int proc_stats_rid_open( struct inode *inode,
    struct file *file,
    u16 rid )
{
 struct proc_data *data;
 struct proc_dir_entry *dp = PDE(inode);
 struct net_device *dev = dp->data;
 struct airo_info *apriv = dev->ml_priv;
 StatsRid stats;
 int i, j;
 __le32 *vals = stats.vals;
 int len;

 if ((file->private_data = kzalloc(sizeof(struct proc_data ), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;
 data = (struct proc_data *)file->private_data;
 if ((data->rbuffer = kmalloc( 4096, GFP_KERNEL )) == ((void*)0)) {
  kfree (file->private_data);
  return -ENOMEM;
 }

 readStatsRid(apriv, &stats, rid, 1);
 len = le16_to_cpu(stats.len);

        j = 0;
 for(i=0; statsLabels[i]!=(char *)-1 && i*4<len; i++) {
  if (!statsLabels[i]) continue;
  if (j+strlen(statsLabels[i])+16>4096) {
   airo_print_warn(apriv->dev->name,
          "Potentially disasterous buffer overflow averted!");
   break;
  }
  j+=sprintf(data->rbuffer+j, "%s: %u\n", statsLabels[i],
    le32_to_cpu(vals[i]));
 }
 if (i*4 >= len) {
  airo_print_warn(apriv->dev->name, "Got a short rid");
 }
 data->readlen = j;
 return 0;
}
