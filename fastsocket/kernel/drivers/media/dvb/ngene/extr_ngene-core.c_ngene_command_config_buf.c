
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int config; } ;
struct TYPE_4__ {int Length; int Opcode; } ;
struct TYPE_6__ {TYPE_2__ ConfigureBuffers; TYPE_1__ hdr; } ;
struct ngene_command {int in_len; scalar_t__ out_len; TYPE_3__ cmd; } ;
struct ngene {int dummy; } ;


 int CMD_CONFIGURE_BUFFER ;
 int EIO ;
 scalar_t__ ngene_command (struct ngene*,struct ngene_command*) ;

__attribute__((used)) static int ngene_command_config_buf(struct ngene *dev, u8 config)
{
 struct ngene_command com;

 com.cmd.hdr.Opcode = CMD_CONFIGURE_BUFFER;
 com.cmd.hdr.Length = 1;
 com.cmd.ConfigureBuffers.config = config;
 com.in_len = 1;
 com.out_len = 0;

 if (ngene_command(dev, &com) < 0)
  return -EIO;
 return 0;
}
