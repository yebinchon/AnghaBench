
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct atkbd {int ps2dev; } ;


 int ATKBD_CMD_RESET_BAT ;
 int atkbd_disable (struct atkbd*) ;
 int ps2_command (int *,int *,int ) ;
 struct atkbd* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static void atkbd_cleanup(struct serio *serio)
{
 struct atkbd *atkbd = serio_get_drvdata(serio);

 atkbd_disable(atkbd);
 ps2_command(&atkbd->ps2dev, ((void*)0), ATKBD_CMD_RESET_BAT);
}
