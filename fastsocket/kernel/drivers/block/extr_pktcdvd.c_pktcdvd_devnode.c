
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int disk_name; } ;
typedef int mode_t ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *pktcdvd_devnode(struct gendisk *gd, mode_t *mode)
{
 return kasprintf(GFP_KERNEL, "pktcdvd/%s", gd->disk_name);
}
