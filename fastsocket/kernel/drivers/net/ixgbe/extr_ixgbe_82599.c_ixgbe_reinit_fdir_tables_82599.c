
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_FDIR_REINIT_FAILED ;
 int IXGBE_FDIRCMD ;
 int IXGBE_FDIRCMD_CLEARHT ;
 int IXGBE_FDIRCMD_CMD_MASK ;
 int IXGBE_FDIRCMD_CMD_POLL ;
 int IXGBE_FDIRCTRL ;
 int IXGBE_FDIRCTRL_INIT_DONE ;
 int IXGBE_FDIRFREE ;
 int IXGBE_FDIRFSTAT ;
 int IXGBE_FDIRHASH ;
 int IXGBE_FDIRLEN ;
 int IXGBE_FDIRMATCH ;
 int IXGBE_FDIRMISS ;
 int IXGBE_FDIRUSTAT ;
 int IXGBE_FDIR_INIT_DONE_POLL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

s32 ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw)
{
 int i;
 u32 fdirctrl = IXGBE_READ_REG(hw, IXGBE_FDIRCTRL);
 fdirctrl &= ~IXGBE_FDIRCTRL_INIT_DONE;





 for (i = 0; i < IXGBE_FDIRCMD_CMD_POLL; i++) {
  if (!(IXGBE_READ_REG(hw, IXGBE_FDIRCMD) &
        IXGBE_FDIRCMD_CMD_MASK))
   break;
  udelay(10);
 }
 if (i >= IXGBE_FDIRCMD_CMD_POLL) {
  hw_dbg(hw, "Flow Director previous command isn't complete, "
         "aborting table re-initialization.\n");
  return IXGBE_ERR_FDIR_REINIT_FAILED;
 }

 IXGBE_WRITE_REG(hw, IXGBE_FDIRFREE, 0);
 IXGBE_WRITE_FLUSH(hw);







 IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD,
                 (IXGBE_READ_REG(hw, IXGBE_FDIRCMD) |
                  IXGBE_FDIRCMD_CLEARHT));
 IXGBE_WRITE_FLUSH(hw);
 IXGBE_WRITE_REG(hw, IXGBE_FDIRCMD,
                 (IXGBE_READ_REG(hw, IXGBE_FDIRCMD) &
                  ~IXGBE_FDIRCMD_CLEARHT));
 IXGBE_WRITE_FLUSH(hw);




 IXGBE_WRITE_REG(hw, IXGBE_FDIRHASH, 0x00);
 IXGBE_WRITE_FLUSH(hw);

 IXGBE_WRITE_REG(hw, IXGBE_FDIRCTRL, fdirctrl);
 IXGBE_WRITE_FLUSH(hw);


 for (i = 0; i < IXGBE_FDIR_INIT_DONE_POLL; i++) {
  if (IXGBE_READ_REG(hw, IXGBE_FDIRCTRL) &
                     IXGBE_FDIRCTRL_INIT_DONE)
   break;
  usleep_range(1000, 2000);
 }
 if (i >= IXGBE_FDIR_INIT_DONE_POLL) {
  hw_dbg(hw, "Flow Director Signature poll time exceeded!\n");
  return IXGBE_ERR_FDIR_REINIT_FAILED;
 }


 IXGBE_READ_REG(hw, IXGBE_FDIRUSTAT);
 IXGBE_READ_REG(hw, IXGBE_FDIRFSTAT);
 IXGBE_READ_REG(hw, IXGBE_FDIRMATCH);
 IXGBE_READ_REG(hw, IXGBE_FDIRMISS);
 IXGBE_READ_REG(hw, IXGBE_FDIRLEN);

 return 0;
}
