
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int NS_DBG (char*) ;

__attribute__((used)) static int ns_device_ready(struct mtd_info *mtd)
{
 NS_DBG("device_ready\n");
 return 1;
}
