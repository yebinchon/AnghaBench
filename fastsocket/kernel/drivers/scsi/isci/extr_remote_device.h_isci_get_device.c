
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct isci_remote_device *isci_get_device(
 struct isci_remote_device *idev)
{
 if (idev)
  kref_get(&idev->kref);
 return idev;
}
