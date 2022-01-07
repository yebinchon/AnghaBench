
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int snapshot_button_status; scalar_t__ button_dev; } ;


 int KEY_CAMERA ;
 int PWC_TRACE (char*) ;
 int input_report_key (scalar_t__,int ,int) ;
 int input_sync (scalar_t__) ;

__attribute__((used)) static void pwc_snapshot_button(struct pwc_device *pdev, int down)
{
 if (down) {
  PWC_TRACE("Snapshot button pressed.\n");
  pdev->snapshot_button_status = 1;
 } else {
  PWC_TRACE("Snapshot button released.\n");
 }







}
