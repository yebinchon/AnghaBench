
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int stsi (int *,int ,int ,int ) ;

__attribute__((used)) static inline int stsi_0(void)
{
 int rc = stsi(((void*)0), 0, 0, 0);
 return rc == -ENOSYS ? rc : (((unsigned int) rc) >> 28);
}
