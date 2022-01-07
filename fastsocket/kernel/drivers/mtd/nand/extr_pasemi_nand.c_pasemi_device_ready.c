
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int LBICTRL_LPCCTL_NR ;
 int inl (int ) ;
 int lpcctl ;

int pasemi_device_ready(struct mtd_info *mtd)
{
 return !!(inl(lpcctl) & LBICTRL_LPCCTL_NR);
}
