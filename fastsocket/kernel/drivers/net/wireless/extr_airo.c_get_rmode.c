
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;



 int RXMODE_MASK ;



__attribute__((used)) static char *get_rmode(__le16 mode)
{
        switch(mode & RXMODE_MASK) {
        case 129: return "rfmon";
        case 128: return "yna (any) bss rfmon";
        case 130: return "lanmon";
        }
        return "ESS";
}
