
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_dev {int dummy; } ;


 int OSD_DEBUG (char*) ;
 int OSD_VER1 ;
 int _osd_print_system_info (struct osd_dev*,void*) ;
 int osd_dev_set_ver (struct osd_dev*,int ) ;

int osd_auto_detect_ver(struct osd_dev *od, void *caps)
{
 int ret;


 ret = _osd_print_system_info(od, caps);
 if (ret) {
  osd_dev_set_ver(od, OSD_VER1);
  OSD_DEBUG("converting to OSD1\n");
  ret = _osd_print_system_info(od, caps);
 }

 return ret;
}
