
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int hgpk_init(struct psmouse *psmouse)
{
 return -ENODEV;
}
