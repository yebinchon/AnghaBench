
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int pi; } ;


 int pi_write_regr (int ,int,int,int) ;

__attribute__((used)) static inline void write_status(struct pd_unit *disk, int val)
{
 pi_write_regr(disk->pi, 1, 6, val);
}
