
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int channel; } ;
struct zd_chip {TYPE_1__ rf; } ;



__attribute__((used)) static inline u8 _zd_chip_get_channel(struct zd_chip *chip)
{
 return chip->rf.channel;
}
