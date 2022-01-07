
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *nbdcmd_to_ascii(int cmd)
{
 switch (cmd) {
 case 129: return "read";
 case 128: return "write";
 case 130: return "disconnect";
 }
 return "invalid";
}
