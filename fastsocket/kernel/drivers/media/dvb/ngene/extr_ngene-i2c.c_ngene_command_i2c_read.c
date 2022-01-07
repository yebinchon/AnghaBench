
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int Device; int* Data; } ;
struct TYPE_4__ {int Length; int Opcode; } ;
struct TYPE_6__ {int* raw8; TYPE_2__ I2CRead; TYPE_1__ hdr; } ;
struct ngene_command {int in_len; int out_len; TYPE_3__ cmd; } ;
struct ngene {int dummy; } ;


 int CMD_I2C_READ ;
 int EIO ;
 int memcpy (int*,int*,int) ;
 scalar_t__ ngene_command (struct ngene*,struct ngene_command*) ;

__attribute__((used)) static int ngene_command_i2c_read(struct ngene *dev, u8 adr,
      u8 *out, u8 outlen, u8 *in, u8 inlen, int flag)
{
 struct ngene_command com;

 com.cmd.hdr.Opcode = CMD_I2C_READ;
 com.cmd.hdr.Length = outlen + 3;
 com.cmd.I2CRead.Device = adr << 1;
 memcpy(com.cmd.I2CRead.Data, out, outlen);
 com.cmd.I2CRead.Data[outlen] = inlen;
 com.cmd.I2CRead.Data[outlen + 1] = 0;
 com.in_len = outlen + 3;
 com.out_len = inlen + 1;

 if (ngene_command(dev, &com) < 0)
  return -EIO;

 if ((com.cmd.raw8[0] >> 1) != adr)
  return -EIO;

 if (flag)
  memcpy(in, com.cmd.raw8, inlen + 1);
 else
  memcpy(in, com.cmd.raw8 + 1, inlen);
 return 0;
}
