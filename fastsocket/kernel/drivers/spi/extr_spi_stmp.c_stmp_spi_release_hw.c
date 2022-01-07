
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmp_spi {TYPE_1__* master_dev; scalar_t__ clk; } ;
struct TYPE_2__ {void* platform_data; } ;


 int IS_ERR (scalar_t__) ;
 int clk_disable (scalar_t__) ;
 int clk_put (scalar_t__) ;
 int dev_name (TYPE_1__*) ;
 int stmp3xxx_release_pin_group (void*,int ) ;

__attribute__((used)) static void stmp_spi_release_hw(struct stmp_spi *ss)
{
 void *pins = ss->master_dev->platform_data;

 if (ss->clk && !IS_ERR(ss->clk)) {
  clk_disable(ss->clk);
  clk_put(ss->clk);
 }
 stmp3xxx_release_pin_group(pins, dev_name(ss->master_dev));
}
