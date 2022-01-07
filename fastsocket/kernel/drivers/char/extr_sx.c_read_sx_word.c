
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sx_board {scalar_t__ base; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 read_sx_word(struct sx_board *board, int offset)
{
 return readw(board->base + offset);
}
