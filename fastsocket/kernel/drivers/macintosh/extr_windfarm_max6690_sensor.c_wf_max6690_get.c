
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_6690_sensor {int * i2c; } ;
typedef int s32 ;


 int ENODEV ;
 int MAX6690_EXTERNAL_TEMP ;
 int i2c_smbus_read_byte_data (int *,int ) ;
 struct wf_6690_sensor* wf_to_6690 (struct wf_sensor*) ;

__attribute__((used)) static int wf_max6690_get(struct wf_sensor *sr, s32 *value)
{
 struct wf_6690_sensor *max = wf_to_6690(sr);
 s32 data;

 if (max->i2c == ((void*)0))
  return -ENODEV;


 data = i2c_smbus_read_byte_data(max->i2c, MAX6690_EXTERNAL_TEMP);
 if (data < 0)
  return data;
 *value = data << 16;
 return 0;
}
