
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *ioctl_cmd_to_ascii(int cmd)
{
 switch (cmd) {
 case 128: return "set-sock";
 case 131: return "set-blksize";
 case 130: return "set-size";
 case 133: return "do-it";
 case 135: return "clear-sock";
 case 136: return "clear-que";
 case 132: return "print-debug";
 case 129: return "set-size-blocks";
 case 134: return "disconnect";
 case 137: return "set-read-only";
 case 138: return "flush-buffer-cache";
 }
 return "unknown";
}
