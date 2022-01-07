
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ace_device {TYPE_1__* reg_ops; } ;
struct TYPE_2__ {int (* out ) (struct ace_device*,int,int ) ;} ;


 int stub1 (struct ace_device*,int,int ) ;

__attribute__((used)) static inline void ace_out(struct ace_device *ace, int reg, u16 val)
{
 ace->reg_ops->out(ace, reg, val);
}
