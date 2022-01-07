
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unchar ;



__attribute__((used)) static inline void any2scsi(unchar * scsi, int any)
{
 *scsi++ = (unsigned)any >> 16;
 *scsi++ = (unsigned)any >> 8;
 *scsi++ = any;
}
