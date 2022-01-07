
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int host; } ;


 int scsi_remove_host (int ) ;

void scsi_esp_unregister(struct esp *esp)
{
 scsi_remove_host(esp->host);
}
