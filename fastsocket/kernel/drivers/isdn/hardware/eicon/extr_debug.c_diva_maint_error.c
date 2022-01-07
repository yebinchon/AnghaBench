
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_strace_library_interface_t ;


 int DLI_ERR ;
 int diva_mnt_internal_dprintf (int ,int ,char*,int,int,char const*,int) ;

__attribute__((used)) static void diva_maint_error (void* user_context,
                              diva_strace_library_interface_t* hLib,
                              int Adapter,
                              int error,
                              const char* file,
                              int line) {
 diva_mnt_internal_dprintf (0, DLI_ERR,
                             "Trace library error(%d) A(%d) %s %d", error, Adapter, file, line);
}
