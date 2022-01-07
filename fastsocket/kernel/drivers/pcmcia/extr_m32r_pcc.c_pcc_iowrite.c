
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pcc_iorw (int,unsigned long,void*,size_t,size_t,int,int) ;

void pcc_iowrite(int sock, unsigned long port, void *buf, size_t size, size_t nmemb, int flag) {
    pcc_iorw(sock, port, buf, size, nmemb, 1, flag);
}
