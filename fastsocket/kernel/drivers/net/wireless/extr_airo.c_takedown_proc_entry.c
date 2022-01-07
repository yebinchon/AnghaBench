
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct airo_info {char* proc_name; TYPE_1__* proc_entry; } ;
struct TYPE_3__ {int namelen; } ;


 TYPE_1__* airo_entry ;
 int remove_proc_entry (char*,TYPE_1__*) ;

__attribute__((used)) static int takedown_proc_entry( struct net_device *dev,
    struct airo_info *apriv ) {
 if ( !apriv->proc_entry->namelen ) return 0;
 remove_proc_entry("Stats",apriv->proc_entry);
 remove_proc_entry("StatsDelta",apriv->proc_entry);
 remove_proc_entry("Status",apriv->proc_entry);
 remove_proc_entry("Config",apriv->proc_entry);
 remove_proc_entry("SSID",apriv->proc_entry);
 remove_proc_entry("APList",apriv->proc_entry);
 remove_proc_entry("BSSList",apriv->proc_entry);
 remove_proc_entry("WepKey",apriv->proc_entry);
 remove_proc_entry(apriv->proc_name,airo_entry);
 return 0;
}
