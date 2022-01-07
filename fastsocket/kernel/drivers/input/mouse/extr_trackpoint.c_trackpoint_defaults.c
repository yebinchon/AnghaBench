
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trackpoint_data {int ext_dev; int skipback; int inertia; int jenks; int ztime; int upthresh; int thresh; int mindrag; int draghys; int reach; int speed; int sensitivity; int press_to_select; } ;


 int TP_DEF_DRAGHYS ;
 int TP_DEF_EXT_DEV ;
 int TP_DEF_INERTIA ;
 int TP_DEF_JENKS_CURV ;
 int TP_DEF_MINDRAG ;
 int TP_DEF_PTSON ;
 int TP_DEF_REACH ;
 int TP_DEF_SENS ;
 int TP_DEF_SKIPBACK ;
 int TP_DEF_SPEED ;
 int TP_DEF_THRESH ;
 int TP_DEF_UP_THRESH ;
 int TP_DEF_Z_TIME ;

__attribute__((used)) static void trackpoint_defaults(struct trackpoint_data *tp)
{
 tp->press_to_select = TP_DEF_PTSON;
 tp->sensitivity = TP_DEF_SENS;
 tp->speed = TP_DEF_SPEED;
 tp->reach = TP_DEF_REACH;

 tp->draghys = TP_DEF_DRAGHYS;
 tp->mindrag = TP_DEF_MINDRAG;

 tp->thresh = TP_DEF_THRESH;
 tp->upthresh = TP_DEF_UP_THRESH;

 tp->ztime = TP_DEF_Z_TIME;
 tp->jenks = TP_DEF_JENKS_CURV;

 tp->inertia = TP_DEF_INERTIA;
 tp->skipback = TP_DEF_SKIPBACK;
 tp->ext_dev = TP_DEF_EXT_DEV;
}
