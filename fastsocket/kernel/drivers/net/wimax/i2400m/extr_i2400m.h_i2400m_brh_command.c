
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum i2400m_brh_opcode { ____Placeholder_i2400m_brh_opcode } i2400m_brh_opcode ;
typedef int __le32 ;


 int I2400M_BRH_DIRECT_ACCESS ;
 int I2400M_BRH_OPCODE_MASK ;
 int I2400M_BRH_RESPONSE_REQUIRED ;
 int I2400M_BRH_SIGNATURE ;
 int I2400M_BRH_USE_CHECKSUM ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static inline
__le32 i2400m_brh_command(enum i2400m_brh_opcode opcode, unsigned use_checksum,
     unsigned direct_access)
{
 return cpu_to_le32(
  I2400M_BRH_SIGNATURE
  | (direct_access ? I2400M_BRH_DIRECT_ACCESS : 0)
  | I2400M_BRH_RESPONSE_REQUIRED
  | (use_checksum ? I2400M_BRH_USE_CHECKSUM : 0)
  | (opcode & I2400M_BRH_OPCODE_MASK));
}
