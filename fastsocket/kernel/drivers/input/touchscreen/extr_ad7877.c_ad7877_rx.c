
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct input_dev {int dummy; } ;
struct ad7877 {unsigned int* conversion_data; unsigned int x_plate_ohms; struct input_dev* input; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 size_t AD7877_SEQ_XPOS ;
 size_t AD7877_SEQ_YPOS ;
 size_t AD7877_SEQ_Z1 ;
 size_t AD7877_SEQ_Z2 ;
 unsigned int MAX_12BIT ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void ad7877_rx(struct ad7877 *ts)
{
 struct input_dev *input_dev = ts->input;
 unsigned Rt;
 u16 x, y, z1, z2;

 x = ts->conversion_data[AD7877_SEQ_XPOS] & MAX_12BIT;
 y = ts->conversion_data[AD7877_SEQ_YPOS] & MAX_12BIT;
 z1 = ts->conversion_data[AD7877_SEQ_Z1] & MAX_12BIT;
 z2 = ts->conversion_data[AD7877_SEQ_Z2] & MAX_12BIT;
 if (likely(x && z1)) {

  Rt = (z2 - z1) * x * ts->x_plate_ohms;
  Rt /= z1;
  Rt = (Rt + 2047) >> 12;

  input_report_abs(input_dev, ABS_X, x);
  input_report_abs(input_dev, ABS_Y, y);
  input_report_abs(input_dev, ABS_PRESSURE, Rt);
  input_sync(input_dev);
 }
}
