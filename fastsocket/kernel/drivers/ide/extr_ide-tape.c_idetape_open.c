
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_tape_obj {int dummy; } ;
struct block_device {int bd_disk; } ;
typedef int fmode_t ;


 int ENXIO ;
 struct ide_tape_obj* ide_tape_get (int ,int,int ) ;

__attribute__((used)) static int idetape_open(struct block_device *bdev, fmode_t mode)
{
 struct ide_tape_obj *tape = ide_tape_get(bdev->bd_disk, 0, 0);

 if (!tape)
  return -ENXIO;

 return 0;
}
