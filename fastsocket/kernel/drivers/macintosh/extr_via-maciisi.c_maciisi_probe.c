
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adb_type; } ;


 int ENODEV ;
 scalar_t__ MAC_ADB_IISI ;
 TYPE_1__* macintosh_config ;
 int via ;
 int via1 ;

__attribute__((used)) static int
maciisi_probe(void)
{
 if (macintosh_config->adb_type != MAC_ADB_IISI)
  return -ENODEV;

 via = via1;
 return 0;
}
