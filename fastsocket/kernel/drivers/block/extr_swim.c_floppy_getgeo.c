
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_geometry {int cylinders; int sectors; int heads; } ;
struct floppy_struct {int track; int sect; int head; } ;
struct floppy_state {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {struct floppy_state* private_data; } ;


 int get_floppy_geometry (struct floppy_state*,int ,struct floppy_struct**) ;

__attribute__((used)) static int floppy_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct floppy_state *fs = bdev->bd_disk->private_data;
 struct floppy_struct *g;
 int ret;

 ret = get_floppy_geometry(fs, 0, &g);
 if (ret)
  return ret;

 geo->heads = g->head;
 geo->sectors = g->sect;
 geo->cylinders = g->track;

 return 0;
}
