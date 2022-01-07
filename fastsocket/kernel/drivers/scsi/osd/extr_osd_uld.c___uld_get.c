
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_uld_device {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void __uld_get(struct osd_uld_device *oud)
{
 kref_get(&oud->kref);
}
