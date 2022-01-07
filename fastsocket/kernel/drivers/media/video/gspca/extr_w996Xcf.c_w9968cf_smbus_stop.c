
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;


 int w9968cf_write_sb (struct sd*,int) ;

__attribute__((used)) static void w9968cf_smbus_stop(struct sd *sd)
{
 w9968cf_write_sb(sd, 0x0010);
 w9968cf_write_sb(sd, 0x0011);
 w9968cf_write_sb(sd, 0x0013);
}
