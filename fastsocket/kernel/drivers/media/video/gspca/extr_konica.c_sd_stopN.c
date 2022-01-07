
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ snapshot_pressed; } ;
struct gspca_dev {int input_dev; } ;


 int KEY_CAMERA ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int konica_stream_off (struct gspca_dev*) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 konica_stream_off(gspca_dev);
}
