
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001_coord {int tilt_y; int tilt_x; int pen_pressure; int y; int x; } ;
struct w8001 {int response; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_X ;
 int ABS_Y ;
 int W8001_CMD_QUERY ;
 int W8001_CMD_START ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int parse_data (int ,struct w8001_coord*) ;
 int w8001_command (struct w8001*,int ,int) ;

__attribute__((used)) static int w8001_setup(struct w8001 *w8001)
{
 struct input_dev *dev = w8001->dev;
 struct w8001_coord coord;
 int error;

 error = w8001_command(w8001, W8001_CMD_QUERY, 1);
 if (error)
  return error;

 parse_data(w8001->response, &coord);

 input_set_abs_params(dev, ABS_X, 0, coord.x, 0, 0);
 input_set_abs_params(dev, ABS_Y, 0, coord.y, 0, 0);
 input_set_abs_params(dev, ABS_PRESSURE, 0, coord.pen_pressure, 0, 0);
 input_set_abs_params(dev, ABS_TILT_X, 0, coord.tilt_x, 0, 0);
 input_set_abs_params(dev, ABS_TILT_Y, 0, coord.tilt_y, 0, 0);

 return w8001_command(w8001, W8001_CMD_START, 0);
}
