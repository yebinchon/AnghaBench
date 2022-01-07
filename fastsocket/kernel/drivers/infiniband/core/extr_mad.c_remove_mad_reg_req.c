
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct ib_mad_port_private {TYPE_2__* version; } ;
struct ib_mad_mgmt_vendor_class_table {struct ib_mad_mgmt_vendor_class_table** vendor_class; int * oui; struct ib_mad_mgmt_vendor_class_table** method_table; } ;
struct ib_mad_mgmt_vendor_class {struct ib_mad_mgmt_vendor_class** vendor_class; int * oui; struct ib_mad_mgmt_vendor_class** method_table; } ;
struct ib_mad_mgmt_method_table {struct ib_mad_mgmt_method_table** vendor_class; int * oui; struct ib_mad_mgmt_method_table** method_table; } ;
struct ib_mad_mgmt_class_table {struct ib_mad_mgmt_class_table** vendor_class; int * oui; struct ib_mad_mgmt_class_table** method_table; } ;
struct ib_mad_agent_private {TYPE_3__* reg_req; TYPE_1__* qp_info; } ;
struct TYPE_6__ {size_t mgmt_class_version; int oui; int mgmt_class; } ;
struct TYPE_5__ {struct ib_mad_mgmt_vendor_class_table* vendor; struct ib_mad_mgmt_vendor_class_table* class; } ;
struct TYPE_4__ {struct ib_mad_port_private* port_priv; } ;


 int check_class_table (struct ib_mad_mgmt_vendor_class_table*) ;
 int check_method_table (struct ib_mad_mgmt_vendor_class_table*) ;
 int check_vendor_class (struct ib_mad_mgmt_vendor_class_table*) ;
 int check_vendor_table (struct ib_mad_mgmt_vendor_class_table*) ;
 size_t convert_mgmt_class (int ) ;
 int find_vendor_oui (struct ib_mad_mgmt_vendor_class_table*,int ) ;
 int is_vendor_class (size_t) ;
 int kfree (struct ib_mad_mgmt_vendor_class_table*) ;
 int memset (int ,int ,int) ;
 int remove_methods_mad_agent (struct ib_mad_mgmt_vendor_class_table*,struct ib_mad_agent_private*) ;
 size_t vendor_class_index (int ) ;

__attribute__((used)) static void remove_mad_reg_req(struct ib_mad_agent_private *agent_priv)
{
 struct ib_mad_port_private *port_priv;
 struct ib_mad_mgmt_class_table *class;
 struct ib_mad_mgmt_method_table *method;
 struct ib_mad_mgmt_vendor_class_table *vendor;
 struct ib_mad_mgmt_vendor_class *vendor_class;
 int index;
 u8 mgmt_class;





 if (!agent_priv->reg_req) {
  goto out;
 }

 port_priv = agent_priv->qp_info->port_priv;
 mgmt_class = convert_mgmt_class(agent_priv->reg_req->mgmt_class);
 class = port_priv->version[
   agent_priv->reg_req->mgmt_class_version].class;
 if (!class)
  goto vendor_check;

 method = class->method_table[mgmt_class];
 if (method) {

  remove_methods_mad_agent(method, agent_priv);

  if (!check_method_table(method)) {

    kfree(method);
    class->method_table[mgmt_class] = ((void*)0);

   if (!check_class_table(class)) {

    kfree(class);
    port_priv->version[
     agent_priv->reg_req->
     mgmt_class_version].class = ((void*)0);
   }
  }
 }

vendor_check:
 if (!is_vendor_class(mgmt_class))
  goto out;


 mgmt_class = vendor_class_index(agent_priv->reg_req->mgmt_class);
 vendor = port_priv->version[
   agent_priv->reg_req->mgmt_class_version].vendor;

 if (!vendor)
  goto out;

 vendor_class = vendor->vendor_class[mgmt_class];
 if (vendor_class) {
  index = find_vendor_oui(vendor_class, agent_priv->reg_req->oui);
  if (index < 0)
   goto out;
  method = vendor_class->method_table[index];
  if (method) {

   remove_methods_mad_agent(method, agent_priv);




   if (!check_method_table(method)) {

    kfree(method);
    vendor_class->method_table[index] = ((void*)0);
    memset(vendor_class->oui[index], 0, 3);

    if (!check_vendor_class(vendor_class)) {

     kfree(vendor_class);
     vendor->vendor_class[mgmt_class] = ((void*)0);

     if (!check_vendor_table(vendor)) {
      kfree(vendor);
      port_priv->version[
       agent_priv->reg_req->
       mgmt_class_version].
       vendor = ((void*)0);
     }
    }
   }
  }
 }

out:
 return;
}
