
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_tape_obj {int dummy; } ;
struct gendisk {int dummy; } ;
typedef int fmode_t ;


 struct ide_tape_obj* ide_drv_g (struct gendisk*,int ) ;
 int ide_tape_obj ;
 int ide_tape_put (struct ide_tape_obj*) ;

__attribute__((used)) static int idetape_release(struct gendisk *disk, fmode_t mode)
{
 struct ide_tape_obj *tape = ide_drv_g(disk, ide_tape_obj);

 ide_tape_put(tape);
 return 0;
}
