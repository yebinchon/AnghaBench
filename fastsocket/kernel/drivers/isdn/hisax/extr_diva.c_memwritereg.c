
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static inline void
memwritereg(unsigned long adr, u_char off, u_char data)
{
 register u_char *p;

 p = (unsigned char *)(((unsigned int *)adr) + off);
 *p = data;
}
