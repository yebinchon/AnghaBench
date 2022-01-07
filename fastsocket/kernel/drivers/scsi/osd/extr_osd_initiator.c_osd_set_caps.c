
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; } ;
struct osd_cdb {TYPE_1__ v1; } ;


 int OSD_CAP_LEN ;
 int OSDv1_CAP_LEN ;
 int memcpy (int *,void const*,int ) ;

void osd_set_caps(struct osd_cdb *cdb, const void *caps)
{
 bool is_ver1 = 1;

 memcpy(&cdb->v1.caps, caps, is_ver1 ? OSDv1_CAP_LEN : OSD_CAP_LEN);
}
