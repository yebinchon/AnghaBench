
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct typhoon_indexes {int dummy; } ;
struct TYPE_12__ {scalar_t__ lastRead; scalar_t__ lastWrite; } ;
struct TYPE_11__ {scalar_t__ lastRead; scalar_t__ lastWrite; } ;
struct TYPE_10__ {scalar_t__ lastWrite; } ;
struct TYPE_9__ {scalar_t__ lastWrite; } ;
struct TYPE_8__ {scalar_t__ lastWrite; } ;
struct TYPE_7__ {scalar_t__ lastWrite; } ;
struct typhoon {TYPE_6__ txHiRing; TYPE_5__ txLoRing; TYPE_4__ cmdRing; TYPE_3__ rxBuffRing; TYPE_2__ rxHiRing; TYPE_1__ rxLoRing; int indexes; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void
typhoon_init_rings(struct typhoon *tp)
{
 memset(tp->indexes, 0, sizeof(struct typhoon_indexes));

 tp->txLoRing.lastWrite = 0;
 tp->txHiRing.lastWrite = 0;
 tp->rxLoRing.lastWrite = 0;
 tp->rxHiRing.lastWrite = 0;
 tp->rxBuffRing.lastWrite = 0;
 tp->cmdRing.lastWrite = 0;
 tp->cmdRing.lastWrite = 0;

 tp->txLoRing.lastRead = 0;
 tp->txHiRing.lastRead = 0;
}
