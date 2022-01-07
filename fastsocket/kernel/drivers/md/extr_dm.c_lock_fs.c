
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; int * frozen_sb; int bdev; } ;


 int DMF_FROZEN ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int WARN_ON (int *) ;
 int * freeze_bdev (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int lock_fs(struct mapped_device *md)
{
 int r;

 WARN_ON(md->frozen_sb);

 md->frozen_sb = freeze_bdev(md->bdev);
 if (IS_ERR(md->frozen_sb)) {
  r = PTR_ERR(md->frozen_sb);
  md->frozen_sb = ((void*)0);
  return r;
 }

 set_bit(DMF_FROZEN, &md->flags);

 return 0;
}
