
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_CLASS_MASK ;







 int EV_SEVERITY_MASK ;







 char* KERN_ALERT ;
 char* KERN_CRIT ;
 char* KERN_NOTICE ;
 char* KERN_WARNING ;

__attribute__((used)) static char *
scdrv_event_severity(int code)
{
 int ev_class = (code & EV_CLASS_MASK);
 int ev_severity = (code & EV_SEVERITY_MASK);
 char *pk_severity = KERN_NOTICE;

 switch (ev_class) {
 case 141:
  switch (ev_severity) {
  case 131:
  case 133:
   pk_severity = KERN_WARNING;
   break;
  case 134:
  case 132:
   pk_severity = KERN_ALERT;
   break;
  }
  break;
 case 142:
  switch (ev_severity) {
  case 135:
   pk_severity = KERN_WARNING;
   break;
  case 136:
   pk_severity = KERN_CRIT;
   break;
  }
  break;
 case 139:
  switch (ev_severity) {
  case 130:
   pk_severity = KERN_WARNING;
   break;
  case 129:
   pk_severity = KERN_CRIT;
   break;
  case 128:
   pk_severity = KERN_ALERT;
   break;
  }
  break;
 case 143:
  pk_severity = KERN_ALERT;
  break;
 case 138:
  pk_severity = KERN_ALERT;
  break;
 case 137:
  pk_severity = KERN_WARNING;
  break;
 case 140:
  pk_severity = KERN_ALERT;
  break;
 }

 return pk_severity;
}
