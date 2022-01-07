
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_board {int flags; int base; } ;


 int SX_BOARD_IS_PCI ;
 int SX_IO_SPACE ;
 int SX_PCI_IO_SPACE ;
 int release_region (int ,int ) ;

__attribute__((used)) static void sx_release_io_range(struct specialix_board *bp)
{
 release_region(bp->base, bp->flags & SX_BOARD_IS_PCI ?
     SX_PCI_IO_SPACE : SX_IO_SPACE);
}
