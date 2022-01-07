
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int dummy; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int MAX_CNIC_ULP_TYPE ;
 int cnic_ulp_stop_one (struct cnic_local*,int) ;

__attribute__((used)) static void cnic_ulp_stop(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 int if_type;

 for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++)
  cnic_ulp_stop_one(cp, if_type);
}
