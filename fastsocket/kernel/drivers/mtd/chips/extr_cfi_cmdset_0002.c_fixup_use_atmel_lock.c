
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int flags; int unlock; int lock; } ;


 int MTD_POWERUP_LOCK ;
 int cfi_atmel_lock ;
 int cfi_atmel_unlock ;

__attribute__((used)) static void fixup_use_atmel_lock(struct mtd_info *mtd, void *param)
{
 mtd->lock = cfi_atmel_lock;
 mtd->unlock = cfi_atmel_unlock;
 mtd->flags |= MTD_POWERUP_LOCK;
}
