
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int DEB (int ) ;
 char const* info_msg ;
 int printk (char*) ;

__attribute__((used)) static const char *NCR53c406a_info(struct Scsi_Host *SChost)
{
 DEB(printk("NCR53c406a_info called\n"));
 return (info_msg);
}
