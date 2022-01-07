
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_65xx_board {int num_dio_ports; int num_di_ports; int num_do_ports; } ;



__attribute__((used)) static inline unsigned ni_65xx_total_num_ports(const struct ni_65xx_board
            *board)
{
 return board->num_dio_ports + board->num_di_ports + board->num_do_ports;
}
