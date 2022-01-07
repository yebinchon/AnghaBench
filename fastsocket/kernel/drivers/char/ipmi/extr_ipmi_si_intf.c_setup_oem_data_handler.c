
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int dummy; } ;


 int setup_dell_poweredge_oem_data_handler (struct smi_info*) ;

__attribute__((used)) static void setup_oem_data_handler(struct smi_info *smi_info)
{
 setup_dell_poweredge_oem_data_handler(smi_info);
}
