
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400 {int dev; } ;
struct mfd_cell {char* name; struct wm8400* driver_data; } ;


 int mfd_add_devices (int ,int,struct mfd_cell*,int,int *,int ) ;

__attribute__((used)) static int wm8400_register_codec(struct wm8400 *wm8400)
{
 struct mfd_cell cell = {
  .name = "wm8400-codec",
  .driver_data = wm8400,
 };

 return mfd_add_devices(wm8400->dev, -1, &cell, 1, ((void*)0), 0);
}
