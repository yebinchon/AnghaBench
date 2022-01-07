
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sd {scalar_t__ snapshot_pressed; int snapshot_needs_reset; int bridge; } ;
struct gspca_dev {int input_dev; } ;





 int KEY_CAMERA ;
 int input_report_key (int ,int ,scalar_t__) ;
 int input_sync (int ) ;

__attribute__((used)) static void ov51x_handle_button(struct gspca_dev *gspca_dev, u8 state)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->snapshot_pressed != state) {




  if (state)
   sd->snapshot_needs_reset = 1;

  sd->snapshot_pressed = state;
 } else {



  switch (sd->bridge) {
  case 130:
  case 129:
  case 128:
   if (state)
    sd->snapshot_needs_reset = 1;
   break;
  }
 }
}
