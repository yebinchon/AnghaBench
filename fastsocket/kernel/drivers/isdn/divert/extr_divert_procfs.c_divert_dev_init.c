
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int proc_net; } ;


 int S_IFREG ;
 int S_IRUGO ;
 TYPE_1__ init_net ;
 int init_waitqueue_head (int *) ;
 int isdn_divert_entry ;
 int isdn_fops ;
 int isdn_proc_entry ;
 int proc_create (char*,int,int ,int *) ;
 int proc_mkdir (char*,int ) ;
 int rd_queue ;
 int remove_proc_entry (char*,int ) ;

int
divert_dev_init(void)
{

 init_waitqueue_head(&rd_queue);
 return (0);
}
