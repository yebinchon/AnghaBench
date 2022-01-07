
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int * drv; struct hil_mlc_serio_map* port_data; } ;
struct hil_mlc_serio_map {struct hil_mlc* mlc; } ;
struct hil_mlc {int dummy; } ;


 int BUG_ON (int ) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void hil_mlc_serio_close(struct serio *serio)
{
 struct hil_mlc_serio_map *map;
 struct hil_mlc *mlc;

 map = serio->port_data;
 BUG_ON(map == ((void*)0));

 mlc = map->mlc;
 BUG_ON(mlc == ((void*)0));

 serio_set_drvdata(serio, ((void*)0));
 serio->drv = ((void*)0);

}
