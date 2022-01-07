
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int shost_class ;

void scsi_exit_hosts(void)
{
 class_unregister(&shost_class);
}
