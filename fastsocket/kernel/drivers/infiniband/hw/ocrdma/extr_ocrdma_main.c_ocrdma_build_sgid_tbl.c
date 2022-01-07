
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int dummy; } ;


 int ocrdma_add_default_sgid (struct ocrdma_dev*) ;
 int ocrdma_add_vlan_sgids (struct ocrdma_dev*) ;

__attribute__((used)) static int ocrdma_build_sgid_tbl(struct ocrdma_dev *dev)
{
 ocrdma_add_default_sgid(dev);
 ocrdma_add_vlan_sgids(dev);
 return 0;
}
