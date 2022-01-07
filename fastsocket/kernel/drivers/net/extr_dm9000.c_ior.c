
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int io_data; int io_addr; } ;
typedef TYPE_1__ board_info_t ;


 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static u8
ior(board_info_t * db, int reg)
{
 writeb(reg, db->io_addr);
 return readb(db->io_data);
}
