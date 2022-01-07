
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_5__ {int proc_dir; int proc_dir_name; } ;


 int ENOMEM ;
 int ipmb_file_read_proc ;
 int ipmi_smi_add_proc_entry (TYPE_1__*,char*,int ,TYPE_1__*) ;
 int proc_ipmi_root ;
 int proc_mkdir (int ,int ) ;
 int sprintf (int ,char*,int) ;
 int stat_file_read_proc ;
 int version_file_read_proc ;

__attribute__((used)) static int add_proc_entries(ipmi_smi_t smi, int num)
{
 int rv = 0;
 return rv;
}
