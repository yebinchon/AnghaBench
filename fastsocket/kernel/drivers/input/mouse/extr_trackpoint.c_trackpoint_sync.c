
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {int press_to_select; int skipback; int ext_dev; int jenks; int ztime; int upthresh; int thresh; int mindrag; int draghys; int reach; int speed; int inertia; int sensitivity; } ;
struct psmouse {int ps2dev; struct trackpoint_data* private; } ;


 int TP_DRAGHYS ;
 int TP_INERTIA ;
 int TP_JENKS_CURV ;
 unsigned char TP_MASK_EXT_DEV ;
 unsigned char TP_MASK_MB ;
 unsigned char TP_MASK_PTSON ;
 unsigned char TP_MASK_SKIPBACK ;
 unsigned char TP_MASK_SOURCE_TAG ;
 unsigned char TP_MASK_TWOHAND ;
 int TP_MINDRAG ;
 int TP_REACH ;
 int TP_SENS ;
 int TP_SPEED ;
 int TP_THRESH ;
 int TP_TOGGLE_EXT_DEV ;
 int TP_TOGGLE_MB ;
 int TP_TOGGLE_PTSON ;
 int TP_TOGGLE_SKIPBACK ;
 int TP_TOGGLE_SOURCE_TAG ;
 int TP_TOGGLE_TWOHAND ;
 int TP_UP_THRESH ;
 int TP_Z_TIME ;
 int trackpoint_read (int *,int ,unsigned char*) ;
 int trackpoint_toggle_bit (int *,int ,unsigned char) ;
 int trackpoint_write (int *,int ,int ) ;

__attribute__((used)) static int trackpoint_sync(struct psmouse *psmouse)
{
 struct trackpoint_data *tp = psmouse->private;
 unsigned char toggle;


 trackpoint_read(&psmouse->ps2dev, TP_TOGGLE_TWOHAND, &toggle);
 if (toggle & TP_MASK_TWOHAND)
  trackpoint_toggle_bit(&psmouse->ps2dev, TP_TOGGLE_TWOHAND, TP_MASK_TWOHAND);

 trackpoint_read(&psmouse->ps2dev, TP_TOGGLE_SOURCE_TAG, &toggle);
 if (toggle & TP_MASK_SOURCE_TAG)
  trackpoint_toggle_bit(&psmouse->ps2dev, TP_TOGGLE_SOURCE_TAG, TP_MASK_SOURCE_TAG);

 trackpoint_read(&psmouse->ps2dev, TP_TOGGLE_MB, &toggle);
 if (toggle & TP_MASK_MB)
  trackpoint_toggle_bit(&psmouse->ps2dev, TP_TOGGLE_MB, TP_MASK_MB);


 trackpoint_write(&psmouse->ps2dev, TP_SENS, tp->sensitivity);
 trackpoint_write(&psmouse->ps2dev, TP_INERTIA, tp->inertia);
 trackpoint_write(&psmouse->ps2dev, TP_SPEED, tp->speed);

 trackpoint_write(&psmouse->ps2dev, TP_REACH, tp->reach);
 trackpoint_write(&psmouse->ps2dev, TP_DRAGHYS, tp->draghys);
 trackpoint_write(&psmouse->ps2dev, TP_MINDRAG, tp->mindrag);

 trackpoint_write(&psmouse->ps2dev, TP_THRESH, tp->thresh);
 trackpoint_write(&psmouse->ps2dev, TP_UP_THRESH, tp->upthresh);

 trackpoint_write(&psmouse->ps2dev, TP_Z_TIME, tp->ztime);
 trackpoint_write(&psmouse->ps2dev, TP_JENKS_CURV, tp->jenks);

 trackpoint_read(&psmouse->ps2dev, TP_TOGGLE_PTSON, &toggle);
 if (((toggle & TP_MASK_PTSON) == TP_MASK_PTSON) != tp->press_to_select)
   trackpoint_toggle_bit(&psmouse->ps2dev, TP_TOGGLE_PTSON, TP_MASK_PTSON);

 trackpoint_read(&psmouse->ps2dev, TP_TOGGLE_SKIPBACK, &toggle);
 if (((toggle & TP_MASK_SKIPBACK) == TP_MASK_SKIPBACK) != tp->skipback)
  trackpoint_toggle_bit(&psmouse->ps2dev, TP_TOGGLE_SKIPBACK, TP_MASK_SKIPBACK);

 trackpoint_read(&psmouse->ps2dev, TP_TOGGLE_EXT_DEV, &toggle);
 if (((toggle & TP_MASK_EXT_DEV) == TP_MASK_EXT_DEV) != tp->ext_dev)
  trackpoint_toggle_bit(&psmouse->ps2dev, TP_TOGGLE_EXT_DEV, TP_MASK_EXT_DEV);

 return 0;
}
