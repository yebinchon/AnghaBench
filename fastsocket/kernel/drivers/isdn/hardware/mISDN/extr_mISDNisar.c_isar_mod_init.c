
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISAR_REV ;
 int pr_notice (char*,int ) ;

__attribute__((used)) static int isar_mod_init(void)
{
 pr_notice("mISDN: ISAR driver Rev. %s\n", ISAR_REV);
 return 0;
}
