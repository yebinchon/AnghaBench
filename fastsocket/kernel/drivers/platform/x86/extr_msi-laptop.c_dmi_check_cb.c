
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int ident; } ;


 int printk (char*,int ) ;

__attribute__((used)) static int dmi_check_cb(const struct dmi_system_id *id)
{
        printk("msi-laptop: Identified laptop model '%s'.\n", id->ident);
        return 0;
}
