
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * platform_data; } ;
struct sa1111_dev {TYPE_1__ dev; } ;


 int ENODEV ;
 int GPIO_A0 ;
 int GPIO_A1 ;
 int GPIO_A2 ;
 int GPIO_A3 ;
 int __pxa2xx_drv_pcmcia_probe (TYPE_1__*) ;
 int lubbock_pcmcia_ops ;
 int lubbock_set_misc_wr (int,int ) ;
 scalar_t__ machine_is_lubbock () ;
 int sa1111_set_io (struct sa1111_dev*,int,int ) ;
 int sa1111_set_io_dir (struct sa1111_dev*,int,int ,int ) ;
 int sa1111_set_sleep_io (struct sa1111_dev*,int,int ) ;

int pcmcia_lubbock_init(struct sa1111_dev *sadev)
{
 int ret = -ENODEV;

 if (machine_is_lubbock()) {




  sa1111_set_io_dir(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0, 0);
  sa1111_set_io(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);
  sa1111_set_sleep_io(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);


  lubbock_set_misc_wr((1 << 15) | (1 << 14), 0);

  sadev->dev.platform_data = &lubbock_pcmcia_ops;
  ret = __pxa2xx_drv_pcmcia_probe(&sadev->dev);
 }

 return ret;
}
