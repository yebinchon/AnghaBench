
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;


 int EINVAL ;
 int HERMES_CMD_ACCESS ;
 int HERMES_CMD_WRITE ;
 int HERMES_DATA0 ;
 int HERMES_DATA1 ;
 int hermes_bap_seek (struct hermes*,int,int,int ) ;
 int hermes_docmd_wait (struct hermes*,int,int,int *) ;
 int hermes_write_bytes (struct hermes*,int,void const*,unsigned int) ;
 int hermes_write_reg (struct hermes*,int,int) ;

__attribute__((used)) static int hermes_write_ltv(struct hermes *hw, int bap, u16 rid,
       u16 length, const void *value)
{
 int dreg = bap ? HERMES_DATA1 : HERMES_DATA0;
 int err = 0;
 unsigned count;

 if (length == 0)
  return -EINVAL;

 err = hermes_bap_seek(hw, bap, rid, 0);
 if (err)
  return err;

 hermes_write_reg(hw, dreg, length);
 hermes_write_reg(hw, dreg, rid);

 count = length - 1;

 hermes_write_bytes(hw, dreg, value, count << 1);

 err = hermes_docmd_wait(hw, HERMES_CMD_ACCESS | HERMES_CMD_WRITE,
    rid, ((void*)0));

 return err;
}
