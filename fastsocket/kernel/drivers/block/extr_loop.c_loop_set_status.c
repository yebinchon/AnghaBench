
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct loop_info64 {int lo_encrypt_key_size; int lo_encrypt_type; scalar_t__ lo_offset; scalar_t__ lo_sizelimit; int lo_flags; int lo_encrypt_key; int * lo_init; int lo_crypt_name; int lo_file_name; } ;
struct loop_func_table {int ioctl; int transfer; } ;
struct loop_device {int lo_encrypt_key_size; scalar_t__ lo_key_owner; scalar_t__ lo_state; scalar_t__ lo_offset; scalar_t__ lo_sizelimit; int lo_flags; scalar_t__* lo_encrypt_key; int * lo_init; int ioctl; int transfer; scalar_t__* lo_crypt_name; scalar_t__* lo_file_name; } ;


 int CAP_SYS_ADMIN ;
 int EFBIG ;
 int EINVAL ;
 int ENXIO ;
 int EPERM ;
 int LO_FLAGS_AUTOCLEAR ;
 unsigned int LO_KEY_SIZE ;
 int LO_NAME_SIZE ;
 scalar_t__ Lo_bound ;
 unsigned int MAX_LO_CRYPT ;
 int capable (int ) ;
 scalar_t__ current_uid () ;
 scalar_t__ figure_loop_size (struct loop_device*) ;
 int loop_config_discard (struct loop_device*) ;
 int loop_init_xfer (struct loop_device*,struct loop_func_table*,struct loop_info64 const*) ;
 int loop_release_xfer (struct loop_device*) ;
 int memcpy (scalar_t__*,int ,int) ;
 struct loop_func_table none_funcs ;
 struct loop_func_table** xfer_funcs ;

__attribute__((used)) static int
loop_set_status(struct loop_device *lo, const struct loop_info64 *info)
{
 int err;
 struct loop_func_table *xfer;
 uid_t uid = current_uid();

 if (lo->lo_encrypt_key_size &&
     lo->lo_key_owner != uid &&
     !capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (lo->lo_state != Lo_bound)
  return -ENXIO;
 if ((unsigned int) info->lo_encrypt_key_size > LO_KEY_SIZE)
  return -EINVAL;

 err = loop_release_xfer(lo);
 if (err)
  return err;

 if (info->lo_encrypt_type) {
  unsigned int type = info->lo_encrypt_type;

  if (type >= MAX_LO_CRYPT)
   return -EINVAL;
  xfer = xfer_funcs[type];
  if (xfer == ((void*)0))
   return -EINVAL;
 } else
  xfer = ((void*)0);

 err = loop_init_xfer(lo, xfer, info);
 if (err)
  return err;

 if (lo->lo_offset != info->lo_offset ||
     lo->lo_sizelimit != info->lo_sizelimit) {
  lo->lo_offset = info->lo_offset;
  lo->lo_sizelimit = info->lo_sizelimit;
  if (figure_loop_size(lo))
   return -EFBIG;
 }
 loop_config_discard(lo);

 memcpy(lo->lo_file_name, info->lo_file_name, LO_NAME_SIZE);
 memcpy(lo->lo_crypt_name, info->lo_crypt_name, LO_NAME_SIZE);
 lo->lo_file_name[LO_NAME_SIZE-1] = 0;
 lo->lo_crypt_name[LO_NAME_SIZE-1] = 0;

 if (!xfer)
  xfer = &none_funcs;
 lo->transfer = xfer->transfer;
 lo->ioctl = xfer->ioctl;

 if ((lo->lo_flags & LO_FLAGS_AUTOCLEAR) !=
      (info->lo_flags & LO_FLAGS_AUTOCLEAR))
  lo->lo_flags ^= LO_FLAGS_AUTOCLEAR;

 lo->lo_encrypt_key_size = info->lo_encrypt_key_size;
 lo->lo_init[0] = info->lo_init[0];
 lo->lo_init[1] = info->lo_init[1];
 if (info->lo_encrypt_key_size) {
  memcpy(lo->lo_encrypt_key, info->lo_encrypt_key,
         info->lo_encrypt_key_size);
  lo->lo_key_owner = uid;
 }

 return 0;
}
