
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int width; int height; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*,int,int,int,int,int) ;
 int cit_get_packet_size (struct gspca_dev*) ;

__attribute__((used)) static int cit_get_clock_div(struct gspca_dev *gspca_dev)
{
 int clock_div = 7;
 int fps[8] = { 30, 25, 20, 15, 12, 8, 6, 3 };
 int packet_size;

 packet_size = cit_get_packet_size(gspca_dev);
 if (packet_size < 0)
  return packet_size;

 while (clock_div > 3 &&
   1000 * packet_size >
   gspca_dev->width * gspca_dev->height *
   fps[clock_div - 1] * 3 / 2)
  clock_div--;

 PDEBUG(D_PROBE,
        "PacketSize: %d, res: %dx%d -> using clockdiv: %d (%d fps)",
        packet_size, gspca_dev->width, gspca_dev->height, clock_div,
        fps[clock_div]);

 return clock_div;
}
