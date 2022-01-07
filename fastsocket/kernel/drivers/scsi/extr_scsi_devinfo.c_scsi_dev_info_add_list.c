
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_dev_info_list_table {char const* name; int key; int node; int scsi_dev_info_list; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IS_ERR (struct scsi_dev_info_list_table*) ;
 struct scsi_dev_info_list_table* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int scsi_dev_info_list ;
 struct scsi_dev_info_list_table* scsi_devinfo_lookup_by_key (int) ;

int scsi_dev_info_add_list(int key, const char *name)
{
 struct scsi_dev_info_list_table *devinfo_table =
  scsi_devinfo_lookup_by_key(key);

 if (!IS_ERR(devinfo_table))

  return -EEXIST;

 devinfo_table = kmalloc(sizeof(*devinfo_table), GFP_KERNEL);

 if (!devinfo_table)
  return -ENOMEM;

 INIT_LIST_HEAD(&devinfo_table->node);
 INIT_LIST_HEAD(&devinfo_table->scsi_dev_info_list);
 devinfo_table->name = name;
 devinfo_table->key = key;
 list_add_tail(&devinfo_table->node, &scsi_dev_info_list);

 return 0;
}
