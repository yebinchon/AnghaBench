
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mtd_partition {int mtd; } ;


 int EBUSY ;
 int WARN_ON (int) ;
 int del_mtd_device (int *) ;
 int ssleep (int) ;

__attribute__((used)) static void efx_mtd_remove_partition(struct efx_mtd_partition *part)
{
 int rc;

 for (;;) {
  rc = del_mtd_device(&part->mtd);
  if (rc != -EBUSY)
   break;
  ssleep(1);
 }
 WARN_ON(rc);
}
