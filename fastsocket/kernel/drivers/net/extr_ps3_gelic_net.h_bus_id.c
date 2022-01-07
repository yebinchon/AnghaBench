
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct gelic_card {TYPE_1__* dev; } ;
struct TYPE_2__ {int bus_id; } ;



__attribute__((used)) static inline u64 bus_id(struct gelic_card *card)
{
 return card->dev->bus_id;
}
