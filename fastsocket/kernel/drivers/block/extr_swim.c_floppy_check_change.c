
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct floppy_state* private_data; } ;
struct floppy_state {int ejected; } ;



__attribute__((used)) static int floppy_check_change(struct gendisk *disk)
{
 struct floppy_state *fs = disk->private_data;

 return fs->ejected;
}
