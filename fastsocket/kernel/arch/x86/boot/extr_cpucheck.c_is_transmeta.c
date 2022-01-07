
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ A32 (char,char,char,char) ;
 scalar_t__* cpu_vendor ;

__attribute__((used)) static int is_transmeta(void)
{
 return cpu_vendor[0] == A32('G', 'e', 'n', 'u') &&
        cpu_vendor[1] == A32('i', 'n', 'e', 'T') &&
        cpu_vendor[2] == A32('M', 'x', '8', '6');
}
