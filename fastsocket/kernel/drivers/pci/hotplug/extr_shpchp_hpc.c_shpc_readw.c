
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {scalar_t__ creg; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 shpc_readw(struct controller *ctrl, int reg)
{
 return readw(ctrl->creg + reg);
}
