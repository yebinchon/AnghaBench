
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct msi_counts {int num_devices; int quota; int request; int spare; int over_quota; int requestor; } ;
struct device_node {int full_name; } ;


 int count_non_bridge_devices ;
 int count_spare_msis ;
 struct device_node* find_pe_dn (struct pci_dev*,int*) ;
 struct device_node* find_pe_total_msi (struct pci_dev*,int*) ;
 int memset (struct msi_counts*,int ,int) ;
 int min (int,int) ;
 int of_node_put (struct device_node*) ;
 int pci_device_to_OF_node (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pr_debug (char*,int,...) ;
 int pr_err (char*,int ) ;
 int traverse_pci_devices (struct device_node*,int ,struct msi_counts*) ;

__attribute__((used)) static int msi_quota_for_device(struct pci_dev *dev, int request)
{
 struct device_node *pe_dn;
 struct msi_counts counts;
 int total;

 pr_debug("rtas_msi: calc quota for %s, request %d\n", pci_name(dev),
    request);

 pe_dn = find_pe_total_msi(dev, &total);
 if (!pe_dn)
  pe_dn = find_pe_dn(dev, &total);

 if (!pe_dn) {
  pr_err("rtas_msi: couldn't find PE for %s\n", pci_name(dev));
  goto out;
 }

 pr_debug("rtas_msi: found PE %s\n", pe_dn->full_name);

 memset(&counts, 0, sizeof(struct msi_counts));


 traverse_pci_devices(pe_dn, count_non_bridge_devices, &counts);

 if (counts.num_devices == 0) {
  pr_err("rtas_msi: found 0 devices under PE for %s\n",
   pci_name(dev));
  goto out;
 }

 counts.quota = total / counts.num_devices;
 if (request <= counts.quota)
  goto out;


 counts.requestor = pci_device_to_OF_node(dev);
 counts.request = request;
 traverse_pci_devices(pe_dn, count_spare_msis, &counts);



 counts.spare += total % counts.num_devices;


 if (counts.over_quota)
  counts.quota += counts.spare / counts.over_quota;


 request = min(counts.quota, request);

 pr_debug("rtas_msi: request clamped to quota %d\n", request);
out:
 of_node_put(pe_dn);

 return request;
}
