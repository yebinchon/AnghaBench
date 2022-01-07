
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int Channels; } ;
typedef TYPE_1__ diva_strace_context_t ;
struct TYPE_14__ {int path_length; } ;
typedef TYPE_2__ diva_man_var_header_t ;


 int diva_fax_info (TYPE_1__*,int,TYPE_2__*) ;
 int diva_ifc_statistics (TYPE_1__*,TYPE_2__*) ;
 int diva_line_info (TYPE_1__*,int,TYPE_2__*) ;
 int diva_modem_info (TYPE_1__*,int,TYPE_2__*) ;
 int sprintf (char*,char*,int) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int process_idi_info (diva_strace_context_t* pLib,
               diva_man_var_header_t* pVar) {
 const char* path = (char*)&pVar->path_length+1;
 char name[64];
 int i, len;




 for (i = pLib->Channels; i > 0; i--) {
  len = sprintf (name, "State\\B%d\\Modem", i);
  if (!strncmp(name, path, len)) {
   return (diva_modem_info (pLib, i, pVar));
  }
 }




 for (i = pLib->Channels; i > 0; i--) {
  len = sprintf (name, "State\\B%d\\FAX", i);
  if (!strncmp(name, path, len)) {
   return (diva_fax_info (pLib, i, pVar));
  }
 }




 for (i = pLib->Channels; i > 0; i--) {
  len = sprintf (name, "State\\B%d", i);
  if (!strncmp(name, path, len)) {
   return (diva_line_info (pLib, i, pVar));
  }
 }

 if (!diva_ifc_statistics (pLib, pVar)) {
  return (0);
 }

 return (-1);
}
