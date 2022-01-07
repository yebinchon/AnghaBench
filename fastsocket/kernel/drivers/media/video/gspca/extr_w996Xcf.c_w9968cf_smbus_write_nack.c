
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int w9968cf_write_sb (struct sd*,int) ;

__attribute__((used)) static void w9968cf_smbus_write_nack(struct sd *sd)
{


 w9968cf_write_sb(sd, 0x0013);
 w9968cf_write_sb(sd, 0x0012);
}
