
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {int dev; } ;


 int ENODEV ;
 int GPIO_A0 ;
 int GPIO_A1 ;
 int GPIO_A2 ;
 int GPIO_A3 ;
 scalar_t__ machine_is_assabet () ;
 int neponset_pcmcia_ops ;
 int sa1111_set_io (struct sa1111_dev*,int,int ) ;
 int sa1111_set_io_dir (struct sa1111_dev*,int,int ,int ) ;
 int sa1111_set_sleep_io (struct sa1111_dev*,int,int ) ;
 int sa11xx_drv_pcmcia_probe (int *,int *,int ,int) ;

int pcmcia_neponset_init(struct sa1111_dev *sadev)
{
 int ret = -ENODEV;

 if (machine_is_assabet()) {




  sa1111_set_io_dir(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0, 0);
  sa1111_set_io(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);
  sa1111_set_sleep_io(sadev, GPIO_A0|GPIO_A1|GPIO_A2|GPIO_A3, 0);
  ret = sa11xx_drv_pcmcia_probe(&sadev->dev, &neponset_pcmcia_ops, 0, 2);
 }

 return ret;
}
