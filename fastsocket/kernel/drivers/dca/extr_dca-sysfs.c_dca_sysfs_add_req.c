
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dca_provider {int cd; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int) ;
 int PTR_ERR (struct device*) ;
 int dca_class ;
 struct device* device_create (int ,int ,int ,int *,char*,int ) ;

int dca_sysfs_add_req(struct dca_provider *dca, struct device *dev, int slot)
{
 struct device *cd;
 static int req_count;

 cd = device_create(dca_class, dca->cd, MKDEV(0, slot + 1), ((void*)0),
      "requester%d", req_count++);
 if (IS_ERR(cd))
  return PTR_ERR(cd);
 return 0;
}
