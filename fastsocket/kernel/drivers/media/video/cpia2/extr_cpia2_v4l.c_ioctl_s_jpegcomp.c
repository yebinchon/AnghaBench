
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_jpegcompression {int APP_len; int COM_len; int jpeg_markers; int APPn; int COM_data; int APP_data; } ;
struct TYPE_3__ {int inhibit_htables; } ;
struct TYPE_4__ {TYPE_1__ compression; } ;
struct camera_data {int APPn; int APP_len; int COM_len; int COM_data; int APP_data; TYPE_2__ params; } ;


 int DBG (char*,int,int) ;
 int EINVAL ;
 int LOG (char*,int,...) ;
 int V4L2_JPEG_MARKER_DHT ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int ioctl_s_jpegcomp(void *arg,struct camera_data *cam)
{
 struct v4l2_jpegcompression *parms = arg;

 DBG("S_JPEGCOMP APP_len:%d COM_len:%d\n",
     parms->APP_len, parms->COM_len);

 cam->params.compression.inhibit_htables =
  !(parms->jpeg_markers & V4L2_JPEG_MARKER_DHT);

 if(parms->APP_len != 0) {
  if(parms->APP_len > 0 &&
     parms->APP_len <= sizeof(cam->APP_data) &&
     parms->APPn >= 0 && parms->APPn <= 15) {
   cam->APPn = parms->APPn;
   cam->APP_len = parms->APP_len;
   memcpy(cam->APP_data, parms->APP_data, parms->APP_len);
  } else {
   LOG("Bad APPn Params n=%d len=%d\n",
       parms->APPn, parms->APP_len);
   return -EINVAL;
  }
 } else {
  cam->APP_len = 0;
 }

 if(parms->COM_len != 0) {
  if(parms->COM_len > 0 &&
     parms->COM_len <= sizeof(cam->COM_data)) {
   cam->COM_len = parms->COM_len;
   memcpy(cam->COM_data, parms->COM_data, parms->COM_len);
  } else {
   LOG("Bad COM_len=%d\n", parms->COM_len);
   return -EINVAL;
  }
 }

 return 0;
}
