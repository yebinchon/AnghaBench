
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_disk; } ;


 int del_gendisk (int ) ;
 int loop_free (struct loop_device*) ;

__attribute__((used)) static void loop_del_one(struct loop_device *lo)
{
 del_gendisk(lo->lo_disk);
 loop_free(lo);
}
