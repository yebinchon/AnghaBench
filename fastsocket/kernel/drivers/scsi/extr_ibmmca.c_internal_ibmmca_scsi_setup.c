
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IM_MAX_HOSTS ;
 int LED_ACTIVITY ;
 int LED_ADISP ;
 int LED_DISP ;
 int display_mode ;
 int global_adapter_speed ;
 int ibm_ansi_order ;
 int* io_port ;
 scalar_t__ isdigit (char) ;
 int* scsi_id ;
 void* simple_strtoul (char*,int *,int ) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void internal_ibmmca_scsi_setup(char *str, int *ints)
{
 int i, j, io_base, id_base;
 char *token;

 io_base = 0;
 id_base = 0;
 if (str) {
  j = 0;
  while ((token = strsep(&str, ",")) != ((void*)0)) {
   if (!strcmp(token, "activity"))
    display_mode |= LED_ACTIVITY;
   if (!strcmp(token, "display"))
    display_mode |= LED_DISP;
   if (!strcmp(token, "adisplay"))
    display_mode |= LED_ADISP;
   if (!strcmp(token, "normal"))
    ibm_ansi_order = 0;
   if (!strcmp(token, "ansi"))
    ibm_ansi_order = 1;
   if (!strcmp(token, "fast"))
    global_adapter_speed = 0;
   if (!strcmp(token, "medium"))
    global_adapter_speed = 4;
   if (!strcmp(token, "slow"))
    global_adapter_speed = 7;
   if ((*token == '-') || (isdigit(*token))) {
    if (!(j % 2) && (io_base < IM_MAX_HOSTS))
     io_port[io_base++] = simple_strtoul(token, ((void*)0), 0);
    if ((j % 2) && (id_base < IM_MAX_HOSTS))
     scsi_id[id_base++] = simple_strtoul(token, ((void*)0), 0);
    j++;
   }
  }
 } else if (ints) {
  for (i = 0; i < IM_MAX_HOSTS && 2 * i + 2 < ints[0]; i++) {
   io_port[i] = ints[2 * i + 2];
   scsi_id[i] = ints[2 * i + 2];
  }
 }
 return;
}
