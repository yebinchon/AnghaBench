
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct cardinfo* private_data; } ;
struct cardinfo {int mm_size; } ;


 int set_capacity (struct gendisk*,int) ;

__attribute__((used)) static int mm_revalidate(struct gendisk *disk)
{
 struct cardinfo *card = disk->private_data;
 set_capacity(disk, card->mm_size << 1);
 return 0;
}
