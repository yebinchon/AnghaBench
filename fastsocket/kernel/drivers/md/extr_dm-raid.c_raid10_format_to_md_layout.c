
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int raid10_format_to_md_layout(char *format, unsigned copies)
{

 return (1 << 8) | (copies & 0xFF);
}
