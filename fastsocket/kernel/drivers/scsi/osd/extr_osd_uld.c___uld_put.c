
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_uld_device {int kref; } ;


 int __remove ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void __uld_put(struct osd_uld_device *oud)
{
 kref_put(&oud->kref, __remove);
}
