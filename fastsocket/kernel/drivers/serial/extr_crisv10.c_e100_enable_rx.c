
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int* ioport; int rx_ctrl; } ;


 int IO_MASK (int ,int ) ;
 size_t REG_REC_CTRL ;
 int R_SERIAL0_REC_CTRL ;
 int rec_enable ;

__attribute__((used)) static inline void
e100_enable_rx(struct e100_serial *info)
{


 info->ioport[REG_REC_CTRL] =
  (info->rx_ctrl |= IO_MASK(R_SERIAL0_REC_CTRL, rec_enable));

}
