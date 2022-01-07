
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device_node {int dummy; } ;


 unsigned int EINVAL ;
 unsigned int QE_NUM_OF_SNUM ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 unsigned int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int pr_err (char*) ;

unsigned int qe_get_num_of_snums(void)
{
 struct device_node *qe;
 int size;
 unsigned int num_of_snums;
 const u32 *prop;

 num_of_snums = 28;
 qe = of_find_compatible_node(((void*)0), ((void*)0), "fsl,qe");
 if (!qe) {




  qe = of_find_node_by_type(((void*)0), "qe");
  if (!qe)
   return num_of_snums;
 }

 prop = of_get_property(qe, "fsl,qe-num-snums", &size);
 if (prop && size == sizeof(*prop)) {
  num_of_snums = *prop;
  if ((num_of_snums < 28) || (num_of_snums > QE_NUM_OF_SNUM)) {

   pr_err("QE: number of snum is invalid\n");
   return -EINVAL;
  }
 }

 of_node_put(qe);

 return num_of_snums;
}
