
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sx_board {scalar_t__ base; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 read_sx_byte(struct sx_board *board, int offset)
{
 return readb(board->base + offset);
}
