
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_cmd {unsigned int nbytes; unsigned int nleft; int * cursg; scalar_t__ cursg_ofs; } ;



void ide_init_sg_cmd(struct ide_cmd *cmd, unsigned int nr_bytes)
{
 cmd->nbytes = cmd->nleft = nr_bytes;
 cmd->cursg_ofs = 0;
 cmd->cursg = ((void*)0);
}
