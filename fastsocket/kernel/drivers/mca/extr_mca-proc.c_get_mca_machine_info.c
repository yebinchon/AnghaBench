
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int BIOS_revision ;
 int machine_id ;
 int machine_submodel_id ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static int get_mca_machine_info(char* page, char **start, off_t off,
     int count, int *eof, void *data)
{
 int len = 0;

 len += sprintf(page+len, "Model Id: 0x%x\n", machine_id);
 len += sprintf(page+len, "Submodel Id: 0x%x\n", machine_submodel_id);
 len += sprintf(page+len, "BIOS Revision: 0x%x\n", BIOS_revision);

 if (len <= off+count) *eof = 1;
 *start = page + off;
 len -= off;
 if (len>count) len = count;
 if (len<0) len = 0;
 return len;
}
