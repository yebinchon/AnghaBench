
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctcmpc_dumpit (char*,int) ;

__attribute__((used)) static inline void ctcmpc_dump32(char *buf, int len)
{
 if (len < 32)
  ctcmpc_dumpit(buf, len);
 else
  ctcmpc_dumpit(buf, 32);
}
