
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int ENODEV ;
 int I8042_DATA_REG ;
 scalar_t__ check_legacy_ioport (int ) ;
 int i8042_reset ;
 int request_region (int ,int,char*) ;

__attribute__((used)) static inline int i8042_platform_init(void)
{
 if (!request_region(I8042_DATA_REG, 16, "i8042"))
  return -EBUSY;


 i8042_reset = 1;
 return 0;
}
