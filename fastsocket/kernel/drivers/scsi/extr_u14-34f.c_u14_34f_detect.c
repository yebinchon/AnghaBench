
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {char* proc_name; } ;


 int MAX_BOARDS ;
 size_t MAX_INT_PARAM ;
 scalar_t__ SKIP ;
 int TRUE ;
 int boot_options ;
 scalar_t__* io_port ;
 unsigned int num_boards ;
 int option_setup (int ) ;
 scalar_t__ port_detect (scalar_t__,unsigned int,struct scsi_host_template*) ;
 int setup_done ;
 int ** sh ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int u14_34f_detect(struct scsi_host_template *tpnt) {
   unsigned int j = 0, k;

   tpnt->proc_name = "u14-34f";

   if(strlen(boot_options)) option_setup(boot_options);
   for (k = 0; k < MAX_BOARDS + 1; k++) sh[k] = ((void*)0);

   for (k = 0; io_port[k]; k++) {

      if (io_port[k] == SKIP) continue;

      if (j < MAX_BOARDS && port_detect(io_port[k], j, tpnt)) j++;
      }

   num_boards = j;
   return j;
}
