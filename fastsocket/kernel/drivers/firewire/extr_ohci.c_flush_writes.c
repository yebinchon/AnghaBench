
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int dummy; } ;


 int OHCI1394_Version ;
 int reg_read (struct fw_ohci const*,int ) ;

__attribute__((used)) static inline void flush_writes(const struct fw_ohci *ohci)
{

 reg_read(ohci, OHCI1394_Version);
}
