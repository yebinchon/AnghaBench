
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
cardstate2str(unsigned short cardstate)
{
 switch (cardstate) {
 case 130: return "detected";
 case 129: return "loading";
 case 128: return "running";
 default: return "???";
 }
}
