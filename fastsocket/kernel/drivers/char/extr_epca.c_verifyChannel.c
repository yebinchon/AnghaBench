
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct channel* driver_data; } ;
struct channel {scalar_t__ magic; } ;


 scalar_t__ EPCA_MAGIC ;
 struct channel* digi_channels ;
 size_t nbdevs ;

__attribute__((used)) static struct channel *verifyChannel(struct tty_struct *tty)
{






 if (tty) {
  struct channel *ch = tty->driver_data;
  if (ch >= &digi_channels[0] && ch < &digi_channels[nbdevs]) {
   if (ch->magic == EPCA_MAGIC)
    return ch;
  }
 }
 return ((void*)0);
}
