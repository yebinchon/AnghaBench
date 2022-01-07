
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_proc; int read_proc; } ;


 int ENOENT ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 TYPE_1__* create_proc_entry (char*,int,int *) ;
 int dasd_devices_entry ;
 int dasd_devices_file_ops ;
 int * dasd_proc_root_entry ;
 TYPE_1__* dasd_statistics_entry ;
 int dasd_statistics_read ;
 int dasd_statistics_write ;
 int proc_create (char*,int,int *,int *) ;
 int * proc_mkdir (char*,int *) ;
 int remove_proc_entry (char*,int *) ;

int
dasd_proc_init(void)
{
 dasd_proc_root_entry = proc_mkdir("dasd", ((void*)0));
 if (!dasd_proc_root_entry)
  goto out_nodasd;
 dasd_devices_entry = proc_create("devices",
      S_IFREG | S_IRUGO | S_IWUSR,
      dasd_proc_root_entry,
      &dasd_devices_file_ops);
 if (!dasd_devices_entry)
  goto out_nodevices;
 dasd_statistics_entry = create_proc_entry("statistics",
        S_IFREG | S_IRUGO | S_IWUSR,
        dasd_proc_root_entry);
 if (!dasd_statistics_entry)
  goto out_nostatistics;
 dasd_statistics_entry->read_proc = dasd_statistics_read;
 dasd_statistics_entry->write_proc = dasd_statistics_write;
 return 0;

 out_nostatistics:
 remove_proc_entry("devices", dasd_proc_root_entry);
 out_nodevices:
 remove_proc_entry("dasd", ((void*)0));
 out_nodasd:
 return -ENOENT;
}
