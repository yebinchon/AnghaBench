
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct iforce {int dummy; } ;


 int iforce_serial_xmit (struct iforce*) ;
 struct iforce* serio_get_drvdata (struct serio*) ;

__attribute__((used)) static void iforce_serio_write_wakeup(struct serio *serio)
{
 struct iforce *iforce = serio_get_drvdata(serio);

 iforce_serial_xmit(iforce);
}
