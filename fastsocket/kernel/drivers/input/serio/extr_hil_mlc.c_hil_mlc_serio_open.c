
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct hil_mlc_serio_map* port_data; } ;
struct hil_mlc_serio_map {struct hil_mlc* mlc; } ;
struct hil_mlc {int dummy; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int * serio_get_drvdata (struct serio*) ;

__attribute__((used)) static int hil_mlc_serio_open(struct serio *serio)
{
 struct hil_mlc_serio_map *map;
 struct hil_mlc *mlc;

 if (serio_get_drvdata(serio) != ((void*)0))
  return -EBUSY;

 map = serio->port_data;
 BUG_ON(map == ((void*)0));

 mlc = map->mlc;
 BUG_ON(mlc == ((void*)0));

 return 0;
}
