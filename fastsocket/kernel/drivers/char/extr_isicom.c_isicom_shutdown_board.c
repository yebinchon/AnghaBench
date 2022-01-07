
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isi_board {int status; } ;


 int BOARD_ACTIVE ;

__attribute__((used)) static inline void isicom_shutdown_board(struct isi_board *bp)
{
 if (bp->status & BOARD_ACTIVE)
  bp->status &= ~BOARD_ACTIVE;
}
