
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {int dummy; } ;
struct btsdio_data {struct sdio_func* func; TYPE_1__* hdev; } ;
struct TYPE_4__ {int err_rx; } ;
struct TYPE_3__ {TYPE_2__ stat; int name; } ;


 int BT_DBG (char*,int ) ;
 int REG_CL_INTRD ;
 int REG_INTRD ;
 int REG_PC_RRT ;
 scalar_t__ btsdio_rx_packet (struct btsdio_data*) ;
 struct btsdio_data* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_readb (struct sdio_func*,int ,int *) ;
 int sdio_writeb (struct sdio_func*,int,int ,int *) ;

__attribute__((used)) static void btsdio_interrupt(struct sdio_func *func)
{
 struct btsdio_data *data = sdio_get_drvdata(func);
 int intrd;

 BT_DBG("%s", data->hdev->name);

 intrd = sdio_readb(func, REG_INTRD, ((void*)0));
 if (intrd & 0x01) {
  sdio_writeb(func, 0x01, REG_CL_INTRD, ((void*)0));

  if (btsdio_rx_packet(data) < 0) {
   data->hdev->stat.err_rx++;
   sdio_writeb(data->func, 0x01, REG_PC_RRT, ((void*)0));
  }
 }
}
