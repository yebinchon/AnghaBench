
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; } ;
typedef int dev_t ;


 int DMF_FREEING ;
 scalar_t__ MAJOR (int ) ;
 unsigned int MINOR (int ) ;
 int MINORBITS ;
 struct mapped_device* MINOR_ALLOCED ;
 scalar_t__ _major ;
 int _minor_idr ;
 int _minor_lock ;
 int disk_devt (int ) ;
 scalar_t__ dm_deleting_md (struct mapped_device*) ;
 int dm_disk (struct mapped_device*) ;
 struct mapped_device* idr_find (int *,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct mapped_device *dm_find_md(dev_t dev)
{
 struct mapped_device *md;
 unsigned minor = MINOR(dev);

 if (MAJOR(dev) != _major || minor >= (1 << MINORBITS))
  return ((void*)0);

 spin_lock(&_minor_lock);

 md = idr_find(&_minor_idr, minor);
 if (md && (md == MINOR_ALLOCED ||
     (MINOR(disk_devt(dm_disk(md))) != minor) ||
     dm_deleting_md(md) ||
     test_bit(DMF_FREEING, &md->flags))) {
  md = ((void*)0);
  goto out;
 }

out:
 spin_unlock(&_minor_lock);

 return md;
}
