
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int BaseAddress; unsigned char TransferMode; } ;
typedef TYPE_1__ nsp_hw_data ;


 unsigned char BRAIND ;
 int FALSE ;
 int TRANSFERMODE ;
 unsigned char TRANSFER_GO ;
 int nsp_index_write (unsigned int,int ,unsigned char) ;

__attribute__((used)) static void nsp_setup_fifo(nsp_hw_data *data, int enabled)
{
 unsigned int base = data->BaseAddress;
 unsigned char transfer_mode_reg;



 if (enabled != FALSE) {
  transfer_mode_reg = TRANSFER_GO | BRAIND;
 } else {
  transfer_mode_reg = 0;
 }

 transfer_mode_reg |= data->TransferMode;

 nsp_index_write(base, TRANSFERMODE, transfer_mode_reg);
}
