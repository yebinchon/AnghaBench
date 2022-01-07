
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct param {int is_present; int byte; } ;



__attribute__((used)) static const u8 *save8bit(struct param *p, const u8 *datap)
{
 p->is_present = 1;
 p->byte = *datap;
 return datap + sizeof(p->byte);
}
