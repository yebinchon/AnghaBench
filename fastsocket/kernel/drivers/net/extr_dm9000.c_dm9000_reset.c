
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int io_data; int io_addr; int dev; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_NCR ;
 int NCR_RST ;
 int dev_dbg (int ,char*) ;
 int udelay (int) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void
dm9000_reset(board_info_t * db)
{
 dev_dbg(db->dev, "resetting device\n");


 writeb(DM9000_NCR, db->io_addr);
 udelay(200);
 writeb(NCR_RST, db->io_data);
 udelay(200);
}
