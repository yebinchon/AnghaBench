
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_info {int dummy; } ;
struct edd_device {struct edd_info* info; } ;



__attribute__((used)) static inline struct edd_info *
edd_dev_get_info(struct edd_device *edev)
{
 return edev->info;
}
