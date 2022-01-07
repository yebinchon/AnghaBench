
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx_board {int irq; scalar_t__ eisa_base; } ;


 scalar_t__ IS_EISA_BOARD (struct sx_board*) ;
 scalar_t__ IS_SI1_BOARD (struct sx_board*) ;
 scalar_t__ IS_SX_BOARD (struct sx_board*) ;
 int SI1_ISA_INTCL ;
 int SI1_ISA_RESET_CLEAR ;
 int SI2_EISA_OFF ;
 int SI2_EISA_VAL ;
 int SI2_ISA_INTCLEAR ;
 int SI2_ISA_INTCLEAR_SET ;
 int SI2_ISA_RESET ;
 int SI2_ISA_RESET_CLEAR ;
 int SX_CONFIG ;
 int SX_CONF_BUSEN ;
 int outb (int,scalar_t__) ;
 int write_sx_byte (struct sx_board*,int ,int ) ;

__attribute__((used)) static int sx_start_board(struct sx_board *board)
{
 if (IS_SX_BOARD(board)) {
  write_sx_byte(board, SX_CONFIG, SX_CONF_BUSEN);
 } else if (IS_EISA_BOARD(board)) {
  write_sx_byte(board, SI2_EISA_OFF, SI2_EISA_VAL);
  outb((board->irq << 4) | 4, board->eisa_base + 0xc02);
 } else if (IS_SI1_BOARD(board)) {
  write_sx_byte(board, SI1_ISA_RESET_CLEAR, 0);
  write_sx_byte(board, SI1_ISA_INTCL, 0);
 } else {


  write_sx_byte(board, SI2_ISA_RESET, SI2_ISA_RESET_CLEAR);
  write_sx_byte(board, SI2_ISA_INTCLEAR, SI2_ISA_INTCLEAR_SET);
 }
 return 1;
}
