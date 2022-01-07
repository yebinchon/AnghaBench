
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct spi_device {int dummy; } ;
struct ser_req {int command; int msg; TYPE_1__* xfer; } ;
struct TYPE_2__ {int* tx_buf; int len; } ;


 int AD7877_WRITEADD (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_12BIT ;
 int kfree (struct ser_req*) ;
 struct ser_req* kzalloc (int,int ) ;
 int spi_message_add_tail (TYPE_1__*,int *) ;
 int spi_message_init (int *) ;
 int spi_sync (struct spi_device*,int *) ;

__attribute__((used)) static int ad7877_write(struct spi_device *spi, u16 reg, u16 val)
{
 struct ser_req *req;
 int status;

 req = kzalloc(sizeof *req, GFP_KERNEL);
 if (!req)
  return -ENOMEM;

 spi_message_init(&req->msg);

 req->command = (u16) (AD7877_WRITEADD(reg) | (val & MAX_12BIT));
 req->xfer[0].tx_buf = &req->command;
 req->xfer[0].len = 2;

 spi_message_add_tail(&req->xfer[0], &req->msg);

 status = spi_sync(spi, &req->msg);

 kfree(req);

 return status;
}
