
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_smbus {scalar_t__ base; } ;


 scalar_t__ AMD_EC_CMD ;
 unsigned char AMD_EC_CMD_WR ;
 scalar_t__ AMD_EC_DATA ;
 int amd_ec_wait_write (struct amd_smbus*) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static unsigned int amd_ec_write(struct amd_smbus *smbus, unsigned char address,
  unsigned char data)
{
 int status;

 status = amd_ec_wait_write(smbus);
 if (status)
  return status;
 outb(AMD_EC_CMD_WR, smbus->base + AMD_EC_CMD);

 status = amd_ec_wait_write(smbus);
 if (status)
  return status;
 outb(address, smbus->base + AMD_EC_DATA);

 status = amd_ec_wait_write(smbus);
 if (status)
  return status;
 outb(data, smbus->base + AMD_EC_DATA);

 return 0;
}
