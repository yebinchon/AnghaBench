
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {int dummy; } ;
struct comedi_device {scalar_t__ board_ptr; } ;



__attribute__((used)) static inline struct pcidas64_board *board(const struct comedi_device *dev)
{
 return (struct pcidas64_board *)dev->board_ptr;
}
