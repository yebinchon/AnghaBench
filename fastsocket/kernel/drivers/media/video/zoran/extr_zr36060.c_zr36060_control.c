
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_com_marker {int dummy; } ;
struct jpeg_app_marker {int dummy; } ;
struct zr36060 {int status; int total_code_vol; int real_code_vol; int scalefact; struct jpeg_com_marker com; struct jpeg_app_marker app; int name; } ;
struct videocodec {scalar_t__ data; } ;
 int CODEC_MODE_BJPG ;







 int EFAULT ;
 int EINVAL ;
 int ENXIO ;
 int dprintk (int,char*,int ,int,int) ;
 int zr36060_read_scalefactor (struct zr36060*) ;
 int zr36060_read_status (struct zr36060*) ;

__attribute__((used)) static int
zr36060_control (struct videocodec *codec,
   int type,
   int size,
   void *data)
{
 struct zr36060 *ptr = (struct zr36060 *) codec->data;
 int *ival = (int *) data;

 dprintk(2, "%s: control %d call with %d byte\n", ptr->name, type,
  size);

 switch (type) {
 case 136:
  if (size != sizeof(int))
   return -EFAULT;
  zr36060_read_status(ptr);
  *ival = ptr->status;
  break;

 case 141:
  if (size != sizeof(int))
   return -EFAULT;
  *ival = CODEC_MODE_BJPG;
  break;

 case 134:
  if (size != sizeof(int))
   return -EFAULT;
  if (*ival != CODEC_MODE_BJPG)
   return -EINVAL;

  return 0;

 case 135:
 case 128:

  return 0;

 case 129:

  return -ENXIO;

 case 137:
  if (size != sizeof(int))
   return -EFAULT;
  *ival = ptr->total_code_vol;
  break;

 case 130:
  if (size != sizeof(int))
   return -EFAULT;
  ptr->total_code_vol = *ival;
  ptr->real_code_vol = (ptr->total_code_vol * 6) >> 3;
  break;

 case 138:
  if (size != sizeof(int))
   return -EFAULT;
  *ival = zr36060_read_scalefactor(ptr);
  break;

 case 131:
  if (size != sizeof(int))
   return -EFAULT;
  ptr->scalefact = *ival;
  break;

 case 140: {
  struct jpeg_app_marker *app = data;

  if (size != sizeof(struct jpeg_app_marker))
   return -EFAULT;

  *app = ptr->app;
  break;
 }

 case 133: {
  struct jpeg_app_marker *app = data;

  if (size != sizeof(struct jpeg_app_marker))
   return -EFAULT;

  ptr->app = *app;
  break;
 }

 case 139: {
  struct jpeg_com_marker *com = data;

  if (size != sizeof(struct jpeg_com_marker))
   return -EFAULT;

  *com = ptr->com;
  break;
 }

 case 132: {
  struct jpeg_com_marker *com = data;

  if (size != sizeof(struct jpeg_com_marker))
   return -EFAULT;

  ptr->com = *com;
  break;
 }

 default:
  return -EINVAL;
 }

 return size;
}
