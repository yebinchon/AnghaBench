
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmdtype_t ;


 int CMD_MISC ;
 int CMD_READ ;
 int CMD_WRITE ;







__attribute__((used)) static inline
cmdtype_t acornscsi_cmdtype(int command)
{
    switch (command) {
    case 128: case 130: case 129:
 return CMD_WRITE;
    case 131: case 133: case 132:
 return CMD_READ;
    default:
 return CMD_MISC;
    }
}
