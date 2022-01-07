
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct loop_info64 {int lo_encrypt_key; scalar_t__ lo_encrypt_key_size; int lo_encrypt_type; int lo_crypt_name; int lo_file_name; int lo_flags; int lo_sizelimit; int lo_offset; void* lo_rdevice; int lo_inode; void* lo_device; int lo_number; } ;
struct loop_device {scalar_t__ lo_state; scalar_t__ lo_encrypt_key_size; int lo_encrypt_key; TYPE_2__* lo_encryption; int lo_crypt_name; int lo_file_name; int lo_flags; int lo_sizelimit; int lo_offset; scalar_t__ lo_device; int lo_number; struct file* lo_backing_file; } ;
struct kstat {int dev; int rdev; int ino; } ;
struct TYPE_3__ {int dentry; int mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct TYPE_4__ {int number; } ;


 int CAP_SYS_ADMIN ;
 int ENXIO ;
 scalar_t__ LO_NAME_SIZE ;
 scalar_t__ Lo_bound ;
 scalar_t__ capable (int ) ;
 void* huge_encode_dev (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct loop_info64*,int ,int) ;
 int vfs_getattr (int ,int ,struct kstat*) ;

__attribute__((used)) static int
loop_get_status(struct loop_device *lo, struct loop_info64 *info)
{
 struct file *file = lo->lo_backing_file;
 struct kstat stat;
 int error;

 if (lo->lo_state != Lo_bound)
  return -ENXIO;
 error = vfs_getattr(file->f_path.mnt, file->f_path.dentry, &stat);
 if (error)
  return error;
 memset(info, 0, sizeof(*info));
 info->lo_number = lo->lo_number;
 info->lo_device = huge_encode_dev(stat.dev);
 info->lo_inode = stat.ino;
 info->lo_rdevice = huge_encode_dev(lo->lo_device ? stat.rdev : stat.dev);
 info->lo_offset = lo->lo_offset;
 info->lo_sizelimit = lo->lo_sizelimit;
 info->lo_flags = lo->lo_flags;
 memcpy(info->lo_file_name, lo->lo_file_name, LO_NAME_SIZE);
 memcpy(info->lo_crypt_name, lo->lo_crypt_name, LO_NAME_SIZE);
 info->lo_encrypt_type =
  lo->lo_encryption ? lo->lo_encryption->number : 0;
 if (lo->lo_encrypt_key_size && capable(CAP_SYS_ADMIN)) {
  info->lo_encrypt_key_size = lo->lo_encrypt_key_size;
  memcpy(info->lo_encrypt_key, lo->lo_encrypt_key,
         lo->lo_encrypt_key_size);
 }
 return 0;
}
