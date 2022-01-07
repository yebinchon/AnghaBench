
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmp_spi {TYPE_1__* master_dev; int dma; int regs; int clk; } ;
struct TYPE_2__ {void* platform_data; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 int dev_name (TYPE_1__*) ;
 int stmp3xxx_dma_reset_channel (int ) ;
 int stmp3xxx_release_pin_group (void*,int ) ;
 int stmp3xxx_request_pin_group (void*,int ) ;
 int stmp3xxx_reset_block (int ,int) ;

__attribute__((used)) static int stmp_spi_init_hw(struct stmp_spi *ss)
{
 int err = 0;
 void *pins = ss->master_dev->platform_data;

 err = stmp3xxx_request_pin_group(pins, dev_name(ss->master_dev));
 if (err)
  goto out;

 ss->clk = clk_get(((void*)0), "ssp");
 if (IS_ERR(ss->clk)) {
  err = PTR_ERR(ss->clk);
  goto out_free_pins;
 }
 clk_enable(ss->clk);

 stmp3xxx_reset_block(ss->regs, 0);
 stmp3xxx_dma_reset_channel(ss->dma);

 return 0;

out_free_pins:
 stmp3xxx_release_pin_group(pins, dev_name(ss->master_dev));
out:
 return err;
}
