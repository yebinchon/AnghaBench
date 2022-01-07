
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_ulp_ops {int (* cnic_get_stats ) (int ) ;} ;
struct cnic_local {int * ulp_handle; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int ENODEV ;
 int cnic_lock ;
 struct cnic_ulp_ops** cnic_ulp_tbl ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static int cnic_copy_ulp_stats(struct cnic_dev *dev, int ulp_type)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_ulp_ops *ulp_ops;
 int rc;

 mutex_lock(&cnic_lock);
 ulp_ops = cnic_ulp_tbl[ulp_type];
 if (ulp_ops && ulp_ops->cnic_get_stats)
  rc = ulp_ops->cnic_get_stats(cp->ulp_handle[ulp_type]);
 else
  rc = -ENODEV;
 mutex_unlock(&cnic_lock);
 return rc;
}
