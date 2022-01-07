
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdabusb_t ;
typedef TYPE_1__* pbulk_transfer_t ;
struct TYPE_4__ {int size; int* data; } ;


 int dabusb_bulk (int ,TYPE_1__*) ;
 int dbg (char*) ;

__attribute__((used)) static int dabusb_fpga_clear (pdabusb_t s, pbulk_transfer_t b)
{
 b->size = 4;
 b->data[0] = 0x2a;
 b->data[1] = 0;
 b->data[2] = 0;
 b->data[3] = 0;

 dbg("dabusb_fpga_clear");

 return dabusb_bulk (s, b);
}
