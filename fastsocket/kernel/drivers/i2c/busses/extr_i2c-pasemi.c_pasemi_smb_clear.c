
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_smbus {int dummy; } ;


 int REG_SMSTA ;
 unsigned int reg_read (struct pasemi_smbus*,int ) ;
 int reg_write (struct pasemi_smbus*,int ,unsigned int) ;

__attribute__((used)) static void pasemi_smb_clear(struct pasemi_smbus *smbus)
{
 unsigned int status;

 status = reg_read(smbus, REG_SMSTA);
 reg_write(smbus, REG_SMSTA, status);
}
