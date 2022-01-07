
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_data; int io_addr; } ;
typedef TYPE_1__ board_info_t ;


 int writeb (int,int ) ;

__attribute__((used)) static void
iow(board_info_t * db, int reg, int value)
{
 writeb(reg, db->io_addr);
 writeb(value, db->io_data);
}
