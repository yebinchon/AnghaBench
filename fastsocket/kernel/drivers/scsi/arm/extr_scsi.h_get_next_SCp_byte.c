
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_pointer {char* ptr; int this_residual; } ;



__attribute__((used)) static inline unsigned char get_next_SCp_byte(struct scsi_pointer *SCp)
{
 char c = *SCp->ptr;

 SCp->ptr += 1;
 SCp->this_residual -= 1;

 return c;
}
