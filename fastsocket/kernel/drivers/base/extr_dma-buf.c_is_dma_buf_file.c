
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int * f_op; } ;


 int dma_buf_fops ;

__attribute__((used)) static inline int is_dma_buf_file(struct file *file)
{
 return file->f_op == &dma_buf_fops;
}
