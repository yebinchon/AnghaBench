
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct iscsi_endpoint {scalar_t__ id; } ;
struct device {int dummy; } ;


 struct iscsi_endpoint* iscsi_dev_to_endpoint (struct device*) ;

__attribute__((used)) static int iscsi_match_epid(struct device *dev, void *data)
{
 struct iscsi_endpoint *ep = iscsi_dev_to_endpoint(dev);
 uint64_t *epid = (uint64_t *) data;

 return *epid == ep->id;
}
