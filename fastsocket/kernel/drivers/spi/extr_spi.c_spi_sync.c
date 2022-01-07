
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int status; int * context; int complete; } ;
struct spi_device {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int done ;
 int spi_async (struct spi_device*,struct spi_message*) ;
 int spi_complete ;
 int wait_for_completion (int *) ;

int spi_sync(struct spi_device *spi, struct spi_message *message)
{
 DECLARE_COMPLETION_ONSTACK(done);
 int status;

 message->complete = spi_complete;
 message->context = &done;
 status = spi_async(spi, message);
 if (status == 0) {
  wait_for_completion(&done);
  status = message->status;
 }
 message->context = ((void*)0);
 return status;
}
