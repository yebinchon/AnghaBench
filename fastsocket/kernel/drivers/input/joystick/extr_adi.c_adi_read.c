
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adi_port {TYPE_1__* adi; } ;
struct TYPE_2__ {scalar_t__ length; } ;


 int adi_decode (TYPE_1__*) ;
 int adi_move_bits (struct adi_port*,scalar_t__) ;
 int adi_read_packet (struct adi_port*) ;

__attribute__((used)) static int adi_read(struct adi_port *port)
{
 int i;
 int result = 0;

 adi_read_packet(port);
 adi_move_bits(port, port->adi[0].length);

 for (i = 0; i < 2; i++)
  if (port->adi[i].length)
    result |= adi_decode(port->adi + i);

 return result;
}
