
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int private_data; } ;
struct TYPE_2__ {unsigned int adapter_nr; } ;
typedef TYPE_1__ diva_um_idi_os_context_t ;


 int ENODEV ;
 scalar_t__ diva_um_id_get_os_context (int ) ;
 scalar_t__ divas_um_idi_delete_entity (int,int ) ;
 int remove_entity (int ) ;

__attribute__((used)) static int um_idi_release(struct inode *inode, struct file *file)
{
 diva_um_idi_os_context_t *p_os;
 unsigned int adapter_nr;
 int ret = 0;

 if (!(file->private_data)) {
  ret = -ENODEV;
  goto out;
 }

 if (!(p_os =
  (diva_um_idi_os_context_t *) diva_um_id_get_os_context(file->private_data))) {
  ret = -ENODEV;
  goto out;
 }

 adapter_nr = p_os->adapter_nr;

 if ((ret = remove_entity(file->private_data))) {
  goto out;
 }

 if (divas_um_idi_delete_entity
     ((int) adapter_nr, file->private_data)) {
  ret = -ENODEV;
  goto out;
 }

      out:
 return (ret);
}
