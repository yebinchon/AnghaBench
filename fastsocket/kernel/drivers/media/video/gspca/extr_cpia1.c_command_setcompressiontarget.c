
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int targetQ; int targetFR; int frTargeting; } ;
struct TYPE_4__ {TYPE_1__ compressionTarget; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;


 int CPIA_COMMAND_SetCompressionTarget ;
 int do_command (struct gspca_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int command_setcompressiontarget(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 return do_command(gspca_dev, CPIA_COMMAND_SetCompressionTarget,
     sd->params.compressionTarget.frTargeting,
     sd->params.compressionTarget.targetFR,
     sd->params.compressionTarget.targetQ, 0);
}
