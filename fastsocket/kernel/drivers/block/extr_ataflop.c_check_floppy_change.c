
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {struct atari_floppy_struct* private_data; } ;
struct atari_floppy_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ wpstat; } ;


 TYPE_1__ UD ;
 int changed_floppies ;
 int fake_change ;
 scalar_t__ test_bit (unsigned int,int *) ;
 struct atari_floppy_struct* unit ;

__attribute__((used)) static int check_floppy_change(struct gendisk *disk)
{
 struct atari_floppy_struct *p = disk->private_data;
 unsigned int drive = p - unit;
 if (test_bit (drive, &fake_change)) {

  return 1;
 }
 if (test_bit (drive, &changed_floppies)) {

  return 1;
 }
 if (UD.wpstat) {



  return 1;
 }

 return 0;
}
