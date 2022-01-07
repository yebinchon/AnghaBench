
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msi_counts {int request; int quota; int over_quota; int spare; struct device_node* requestor; } ;
struct device_node {int dummy; } ;


 int max (int,int) ;
 int* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static void *count_spare_msis(struct device_node *dn, void *data)
{
 struct msi_counts *counts = data;
 const u32 *p;
 int req;

 if (dn == counts->requestor)
  req = counts->request;
 else {


  req = 0;
  p = of_get_property(dn, "ibm,req#msi", ((void*)0));
  if (p)
   req = *p;

  p = of_get_property(dn, "ibm,req#msi-x", ((void*)0));
  if (p)
   req = max(req, (int)*p);
 }

 if (req < counts->quota)
  counts->spare += counts->quota - req;
 else if (req > counts->quota)
  counts->over_quota++;

 return ((void*)0);
}
