
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int kref; } ;


 int kref_put (int *,int ) ;
 int sas_free_device ;

__attribute__((used)) static inline void sas_put_device(struct domain_device *dev)
{
 kref_put(&dev->kref, sas_free_device);
}
