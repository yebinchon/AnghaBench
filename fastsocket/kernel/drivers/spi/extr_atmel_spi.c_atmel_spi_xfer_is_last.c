
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int transfer_list; } ;
struct TYPE_2__ {int * prev; } ;
struct spi_message {TYPE_1__ transfers; } ;



__attribute__((used)) static inline int atmel_spi_xfer_is_last(struct spi_message *msg,
     struct spi_transfer *xfer)
{
 return msg->transfers.prev == &xfer->transfer_list;
}
