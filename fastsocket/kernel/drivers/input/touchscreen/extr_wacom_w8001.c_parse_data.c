
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w8001_coord {int rdy; int tsw; int f1; int f2; int x; int y; int pen_pressure; int tilt_x; int tilt_y; } ;


 int memset (struct w8001_coord*,int ,int) ;

__attribute__((used)) static void parse_data(u8 *data, struct w8001_coord *coord)
{
 memset(coord, 0, sizeof(*coord));

 coord->rdy = data[0] & 0x20;
 coord->tsw = data[0] & 0x01;
 coord->f1 = data[0] & 0x02;
 coord->f2 = data[0] & 0x04;

 coord->x = (data[1] & 0x7F) << 9;
 coord->x |= (data[2] & 0x7F) << 2;
 coord->x |= (data[6] & 0x60) >> 5;

 coord->y = (data[3] & 0x7F) << 9;
 coord->y |= (data[4] & 0x7F) << 2;
 coord->y |= (data[6] & 0x18) >> 3;

 coord->pen_pressure = data[5] & 0x7F;
 coord->pen_pressure |= (data[6] & 0x07) << 7 ;

 coord->tilt_x = data[7] & 0x7F;
 coord->tilt_y = data[8] & 0x7F;
}
