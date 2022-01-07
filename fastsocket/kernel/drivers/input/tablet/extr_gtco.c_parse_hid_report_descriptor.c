
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtco {int max_X; int min_X; int max_Y; int min_Y; int maxtilt_X; int mintilt_X; int maxtilt_Y; int mintilt_Y; int maxpressure; int minpressure; int usage; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __u16 ;


 int DIGITIZER_USAGE_TILT_X ;
 int DIGITIZER_USAGE_TILT_Y ;
 int DIGITIZER_USAGE_TIP_PRESSURE ;
 int PREF_SIZE (int) ;
 int PREF_TAG (int) ;
 int PREF_TYPE (int) ;


 int TAG_GLOB_MAX ;
 int dbg (char*,...) ;
 int get_unaligned_le16 (char*) ;
 int get_unaligned_le32 (char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void parse_hid_report_descriptor(struct gtco *device, char * report,
     int length)
{
 int x, i = 0;


 __u8 prefix;
 __u8 size;
 __u8 tag;
 __u8 type;
 __u8 data = 0;
 __u16 data16 = 0;
 __u32 data32 = 0;


 int inputnum = 0;
 __u32 usage = 0;


 __u32 globalval[TAG_GLOB_MAX];
 __u32 oldval[TAG_GLOB_MAX];


 char maintype = 'x';
 char globtype[12];
 int indent = 0;
 char indentstr[10] = "";


 dbg("======>>>>>>PARSE<<<<<<======");


 while (i < length) {
  prefix = report[i];


  i++;


  size = PREF_SIZE(prefix);
  switch (size) {
  case 1:
   data = report[i];
   break;
  case 2:
   data16 = get_unaligned_le16(&report[i]);
   break;
  case 3:
   size = 4;
   data32 = get_unaligned_le32(&report[i]);
   break;
  }


  i += size;


  tag = PREF_TAG(prefix);
  type = PREF_TYPE(prefix);
  switch (type) {
  case 128:
   strcpy(globtype, "");
   switch (tag) {

   case 132:







    maintype = 'I';
    if (data == 2)
     strcpy(globtype, "Variable");
    else if (data == 3)
     strcpy(globtype, "Var|Const");

    dbg("::::: Saving Report: %d input #%d Max: 0x%X(%d) Min:0x%X(%d) of %d bits",
        globalval[140], inputnum,
        globalval[147], globalval[147],
        globalval[146], globalval[146],
        globalval[139] * globalval[141]);
    switch (inputnum) {
    case 0:
     dbg("GER: X Usage: 0x%x", usage);
     if (device->max_X == 0) {
      device->max_X = globalval[147];
      device->min_X = globalval[146];
     }
     break;

    case 1:
     dbg("GER: Y Usage: 0x%x", usage);
     if (device->max_Y == 0) {
      device->max_Y = globalval[147];
      device->min_Y = globalval[146];
     }
     break;

    default:

     if (usage == DIGITIZER_USAGE_TILT_X) {
      if (device->maxtilt_X == 0) {
       device->maxtilt_X = globalval[147];
       device->mintilt_X = globalval[146];
      }
     }


     if (usage == DIGITIZER_USAGE_TILT_Y) {
      if (device->maxtilt_Y == 0) {
       device->maxtilt_Y = globalval[147];
       device->mintilt_Y = globalval[146];
      }
     }


     if (usage == DIGITIZER_USAGE_TIP_PRESSURE) {
      if (device->maxpressure == 0) {
       device->maxpressure = globalval[147];
       device->minpressure = globalval[146];
      }
     }

     break;
    }

    inputnum++;
    break;

   case 131:
    maintype = 'O';
    break;

   case 133:
    maintype = 'F';
    break;

   case 134:
    maintype = 'S';

    if (data == 0) {
     dbg("======>>>>>> Physical");
     strcpy(globtype, "Physical");
    } else
     dbg("======>>>>>>");


    indent++;
    for (x = 0; x < indent; x++)
     indentstr[x] = '-';
    indentstr[x] = 0;


    for (x = 0; x < TAG_GLOB_MAX; x++)
     oldval[x] = globalval[x];

    break;

   case 135:
    dbg("<<<<<<======");
    maintype = 'E';
    indent--;
    for (x = 0; x < indent; x++)
     indentstr[x] = '-';
    indentstr[x] = 0;


    for (x = 0; x < TAG_GLOB_MAX; x++)
     globalval[x] = oldval[x];

    break;
   }

   switch (size) {
   case 1:
    dbg("%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x",
        indentstr, tag, maintype, size, globtype, data);
    break;

   case 2:
    dbg("%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x",
        indentstr, tag, maintype, size, globtype, data16);
    break;

   case 4:
    dbg("%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x",
        indentstr, tag, maintype, size, globtype, data32);
    break;
   }
   break;

  case 130:
   switch (tag) {
   case 136:




    if (device->usage == 0)
     device->usage = data;

    strcpy(globtype, "USAGE");
    break;

   case 146:
    strcpy(globtype, "LOG_MIN");
    break;

   case 147:
    strcpy(globtype, "LOG_MAX");
    break;

   case 144:
    strcpy(globtype, "PHYS_MIN");
    break;

   case 145:
    strcpy(globtype, "PHYS_MAX");
    break;

   case 137:
    strcpy(globtype, "EXP");
    break;

   case 138:
    strcpy(globtype, "UNIT");
    break;

   case 139:
    strcpy(globtype, "REPORT_SZ");
    break;

   case 140:
    strcpy(globtype, "REPORT_ID");

    inputnum = 0;
    break;

   case 141:
    strcpy(globtype, "REPORT_CNT");
    break;

   case 142:
    strcpy(globtype, "PUSH");
    break;

   case 143:
    strcpy(globtype, "POP");
    break;
   }



   if (tag < TAG_GLOB_MAX) {
    switch (size) {
    case 1:
     dbg("%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x",
         indentstr, globtype, tag, size, data);
     globalval[tag] = data;
     break;

    case 2:
     dbg("%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x",
         indentstr, globtype, tag, size, data16);
     globalval[tag] = data16;
     break;

    case 4:
     dbg("%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x",
         indentstr, globtype, tag, size, data32);
     globalval[tag] = data32;
     break;
    }
   } else {
    dbg("%sGLOBALTAG: ILLEGAL TAG:%d SIZE: %d ",
        indentstr, tag, size);
   }
   break;

  case 129:
   switch (tag) {
   case 136:
    strcpy(globtype, "USAGE");

    usage = data;
    break;

   case 146:
    strcpy(globtype, "MIN");
    break;

   case 147:
    strcpy(globtype, "MAX");
    break;

   default:
    strcpy(globtype, "UNKNOWN");
    break;
   }

   switch (size) {
   case 1:
    dbg("%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x",
        indentstr, tag, globtype, size, data);
    break;

   case 2:
    dbg("%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x",
        indentstr, tag, globtype, size, data16);
    break;

   case 4:
    dbg("%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x",
        indentstr, tag, globtype, size, data32);
    break;
   }

   break;
  }
 }
}
