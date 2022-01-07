
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_volume_info {int used_bytes; int vol_id; int ubi_num; } ;
struct TYPE_2__ {int size; } ;
struct gluebi_device {TYPE_1__ mtd; } ;


 int ENOENT ;
 int devices_mutex ;
 int err_msg (char*,int ,int ) ;
 struct gluebi_device* find_gluebi_nolock (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gluebi_resized(struct ubi_volume_info *vi)
{
 struct gluebi_device *gluebi;

 mutex_lock(&devices_mutex);
 gluebi = find_gluebi_nolock(vi->ubi_num, vi->vol_id);
 if (!gluebi) {
  mutex_unlock(&devices_mutex);
  err_msg("got update notification for unknown UBI device %d "
   "volume %d", vi->ubi_num, vi->vol_id);
  return -ENOENT;
 }
 gluebi->mtd.size = vi->used_bytes;
 mutex_unlock(&devices_mutex);
 return 0;
}
