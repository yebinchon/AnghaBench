
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int __u8 ;
struct TYPE_3__ {int* c; } ;
typedef TYPE_1__ MetricomAddress ;


 int IS_RADIO_ADDRESS (int *) ;
 int READHEX (int ) ;

__attribute__((used)) static int string_to_radio_address(MetricomAddress * addr, __u8 * p)
{
 if (!IS_RADIO_ADDRESS(p))
  return (1);
 addr->c[0] = 0;
 addr->c[1] = 0;
 addr->c[2] = READHEX(p[0]) << 4 | READHEX(p[1]);
 addr->c[3] = READHEX(p[2]) << 4 | READHEX(p[3]);
 addr->c[4] = READHEX(p[5]) << 4 | READHEX(p[6]);
 addr->c[5] = READHEX(p[7]) << 4 | READHEX(p[8]);
 return (0);
}
