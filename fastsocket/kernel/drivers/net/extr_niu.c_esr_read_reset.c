
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct niu {int port; } ;


 int ESR_RXTX_RESET_CTRL_H ;
 int ESR_RXTX_RESET_CTRL_L ;
 int NIU_ESR_DEV_ADDR ;
 int mdio_read (struct niu*,int ,int ,int ) ;

__attribute__((used)) static int esr_read_reset(struct niu *np, u32 *val)
{
 int err;

 err = mdio_read(np, np->port, NIU_ESR_DEV_ADDR,
   ESR_RXTX_RESET_CTRL_L);
 if (err >= 0) {
  *val = (err & 0xffff);
  err = mdio_read(np, np->port, NIU_ESR_DEV_ADDR,
    ESR_RXTX_RESET_CTRL_H);
  if (err >= 0) {
   *val |= ((err & 0xffff) << 16);
   err = 0;
  }
 }
 return err;
}
