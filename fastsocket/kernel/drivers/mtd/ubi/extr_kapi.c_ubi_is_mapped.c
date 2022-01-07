
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {int reserved_pebs; scalar_t__* eba_tbl; scalar_t__ upd_marker; int vol_id; } ;


 int EBADF ;
 int EINVAL ;
 int dbg_gen (char*,int ,int) ;

int ubi_is_mapped(struct ubi_volume_desc *desc, int lnum)
{
 struct ubi_volume *vol = desc->vol;

 dbg_gen("test LEB %d:%d", vol->vol_id, lnum);

 if (lnum < 0 || lnum >= vol->reserved_pebs)
  return -EINVAL;

 if (vol->upd_marker)
  return -EBADF;

 return vol->eba_tbl[lnum] >= 0;
}
