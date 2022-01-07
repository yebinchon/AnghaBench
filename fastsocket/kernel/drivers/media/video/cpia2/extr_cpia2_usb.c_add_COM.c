
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camera_data {int COM_len; TYPE_1__* workbuff; int COM_data; } ;
struct TYPE_2__ {int* data; int length; } ;


 int memcpy (int*,int ,int) ;

__attribute__((used)) static void add_COM(struct camera_data *cam)
{
 if(cam->COM_len > 0) {
  cam->workbuff->data[cam->workbuff->length++] = 0xFF;
  cam->workbuff->data[cam->workbuff->length++] = 0xFE;
  cam->workbuff->data[cam->workbuff->length++] = 0;
  cam->workbuff->data[cam->workbuff->length++] = cam->COM_len+2;
  memcpy(cam->workbuff->data+cam->workbuff->length,
         cam->COM_data, cam->COM_len);
  cam->workbuff->length += cam->COM_len;
 }
}
