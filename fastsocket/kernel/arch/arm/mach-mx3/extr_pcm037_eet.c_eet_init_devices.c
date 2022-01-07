
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 scalar_t__ PCM037_EET ;
 int machine_is_pcm037 () ;
 int mxc_iomux_setup_multiple_pins (int ,int ,char*) ;
 int mxc_register_device (int *,int *) ;
 int mxc_spi_device0 ;
 int pcm037_eet_pins ;
 int pcm037_gpio_keys_device ;
 int pcm037_spi1_master ;
 int pcm037_spi_dev ;
 scalar_t__ pcm037_variant () ;
 int platform_device_register (int *) ;
 int spi_register_board_info (int ,int ) ;

__attribute__((used)) static int eet_init_devices(void)
{
 if (!machine_is_pcm037() || pcm037_variant() != PCM037_EET)
  return 0;

 mxc_iomux_setup_multiple_pins(pcm037_eet_pins,
    ARRAY_SIZE(pcm037_eet_pins), "pcm037_eet");


 spi_register_board_info(pcm037_spi_dev, ARRAY_SIZE(pcm037_spi_dev));




 platform_device_register(&pcm037_gpio_keys_device);

 return 0;
}
