
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECOVERY_MARK_FILENAME ;
 char* recovery_get_full_filename (void const*,int ,char*) ;

__attribute__((used)) static char *recovery_get_mark_filename(const void *pArg, char *full_filename)

{
 return recovery_get_full_filename(pArg, RECOVERY_MARK_FILENAME, full_filename);

}
