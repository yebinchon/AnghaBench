
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iosapic_info {int addr; } ;


 int IOSAPIC_REG_VERSION ;
 unsigned int iosapic_read (int ,int ) ;

__attribute__((used)) static unsigned int
iosapic_rd_version(struct iosapic_info *isi)
{
 return iosapic_read(isi->addr, IOSAPIC_REG_VERSION);
}
