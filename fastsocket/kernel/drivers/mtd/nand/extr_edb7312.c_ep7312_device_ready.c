
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;



__attribute__((used)) static int ep7312_device_ready(struct mtd_info *mtd)
{
 return 1;
}
