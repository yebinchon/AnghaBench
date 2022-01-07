
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct a2232_port {TYPE_2__ gs; } ;






 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,int,int) ;

__attribute__((used)) static inline void a2232_receive_char(struct a2232_port *port, int ch, int err)
{




 struct tty_struct *tty = port->gs.port.tty;
 tty_insert_flip_char(tty, ch, err);
 tty_flip_buffer_push(tty);
}
