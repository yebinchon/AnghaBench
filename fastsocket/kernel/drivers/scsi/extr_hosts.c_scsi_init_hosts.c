
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int shost_class ;

int scsi_init_hosts(void)
{
 return class_register(&shost_class);
}
