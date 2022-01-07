
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int jpeg_markers; int COM_len; int COM_data; int APP_len; int APP_data; int APPn; int quality; } ;
struct TYPE_4__ {TYPE_1__ jpg_comp; } ;
struct zoran_fh {TYPE_2__ jpg_settings; struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct v4l2_jpegcompression {int jpeg_markers; int COM_len; int COM_data; int APP_len; int APP_data; int APPn; int quality; } ;
struct file {int dummy; } ;


 int memcpy (int ,int ,int ) ;
 int memset (struct v4l2_jpegcompression*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_g_jpegcomp(struct file *file, void *__fh,
     struct v4l2_jpegcompression *params)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 memset(params, 0, sizeof(*params));

 mutex_lock(&zr->resource_lock);

 params->quality = fh->jpg_settings.jpg_comp.quality;
 params->APPn = fh->jpg_settings.jpg_comp.APPn;
 memcpy(params->APP_data,
        fh->jpg_settings.jpg_comp.APP_data,
        fh->jpg_settings.jpg_comp.APP_len);
 params->APP_len = fh->jpg_settings.jpg_comp.APP_len;
 memcpy(params->COM_data,
        fh->jpg_settings.jpg_comp.COM_data,
        fh->jpg_settings.jpg_comp.COM_len);
 params->COM_len = fh->jpg_settings.jpg_comp.COM_len;
 params->jpeg_markers =
     fh->jpg_settings.jpg_comp.jpeg_markers;

 mutex_unlock(&zr->resource_lock);

 return 0;
}
