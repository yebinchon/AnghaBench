
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tallies32; } ;
typedef TYPE_1__ local_info_t ;


 int prism2_info_commtallies16 (TYPE_1__*,unsigned char*,int) ;
 int prism2_info_commtallies32 (TYPE_1__*,unsigned char*,int) ;

__attribute__((used)) static void prism2_info_commtallies(local_info_t *local, unsigned char *buf,
        int left)
{
 if (local->tallies32)
  prism2_info_commtallies32(local, buf, left);
 else
  prism2_info_commtallies16(local, buf, left);
}
