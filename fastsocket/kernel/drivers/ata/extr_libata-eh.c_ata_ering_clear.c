
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ering {int dummy; } ;


 int memset (struct ata_ering*,int ,int) ;

__attribute__((used)) static void ata_ering_clear(struct ata_ering *ering)
{
 memset(ering, 0, sizeof(*ering));
}
