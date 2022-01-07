
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_board {int flags; int base; } ;


 int SX_BOARD_IS_PCI ;
 int SX_IO_SPACE ;
 int SX_PCI_IO_SPACE ;
 int * request_region (int ,int ,char*) ;

__attribute__((used)) static int sx_request_io_range(struct specialix_board *bp)
{
 return request_region(bp->base,
  bp->flags & SX_BOARD_IS_PCI ? SX_PCI_IO_SPACE : SX_IO_SPACE,
  "specialix IO8+") == ((void*)0);
}
