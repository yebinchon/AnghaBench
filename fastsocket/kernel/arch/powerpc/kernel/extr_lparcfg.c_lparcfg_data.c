
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;


 int FW_FEATURE_ISERIES ;
 int MODULE_NAME ;
 int MODULE_VERS ;
 scalar_t__ firmware_has_feature (int ) ;
 int iseries_lparcfg_data (struct seq_file*,void*) ;
 struct device_node* of_find_node_by_path (char*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int pseries_lparcfg_data (struct seq_file*,void*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int lparcfg_data(struct seq_file *m, void *v)
{
 struct device_node *rootdn;
 const char *model = "";
 const char *system_id = "";
 const char *tmp;
 const unsigned int *lp_index_ptr;
 unsigned int lp_index = 0;

 seq_printf(m, "%s %s \n", MODULE_NAME, MODULE_VERS);

 rootdn = of_find_node_by_path("/");
 if (rootdn) {
  tmp = of_get_property(rootdn, "model", ((void*)0));
  if (tmp) {
   model = tmp;

   if (firmware_has_feature(FW_FEATURE_ISERIES))
    model += 4;
  }
  tmp = of_get_property(rootdn, "system-id", ((void*)0));
  if (tmp) {
   system_id = tmp;

   if (firmware_has_feature(FW_FEATURE_ISERIES))
    system_id += 4;
  }
  lp_index_ptr = of_get_property(rootdn, "ibm,partition-no",
     ((void*)0));
  if (lp_index_ptr)
   lp_index = *lp_index_ptr;
  of_node_put(rootdn);
 }
 seq_printf(m, "serial_number=%s\n", system_id);
 seq_printf(m, "system_type=%s\n", model);
 seq_printf(m, "partition_id=%d\n", (int)lp_index);

 if (firmware_has_feature(FW_FEATURE_ISERIES))
  return iseries_lparcfg_data(m, v);
 return pseries_lparcfg_data(m, v);
}
