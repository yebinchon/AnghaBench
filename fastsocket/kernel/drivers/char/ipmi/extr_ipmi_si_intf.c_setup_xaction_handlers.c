
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int dummy; } ;


 int setup_dell_poweredge_bt_xaction_handler (struct smi_info*) ;

__attribute__((used)) static void setup_xaction_handlers(struct smi_info *smi_info)
{
 setup_dell_poweredge_bt_xaction_handler(smi_info);
}
