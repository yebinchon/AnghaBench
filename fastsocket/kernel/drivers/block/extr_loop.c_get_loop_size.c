
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {int lo_offset; scalar_t__ lo_sizelimit; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {int host; } ;


 int i_size_read (int ) ;

__attribute__((used)) static loff_t get_loop_size(struct loop_device *lo, struct file *file)
{
 loff_t size, offset, loopsize;


 size = i_size_read(file->f_mapping->host);
 offset = lo->lo_offset;
 loopsize = size - offset;
 if (lo->lo_sizelimit > 0 && lo->lo_sizelimit < loopsize)
  loopsize = lo->lo_sizelimit;





 return loopsize >> 9;
}
