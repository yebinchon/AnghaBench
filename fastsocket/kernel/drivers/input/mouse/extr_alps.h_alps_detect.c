
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int ENOSYS ;

inline int alps_detect(struct psmouse *psmouse, bool set_properties)
{
 return -ENOSYS;
}
