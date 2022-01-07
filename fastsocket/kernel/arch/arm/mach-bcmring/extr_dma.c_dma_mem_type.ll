; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_mem_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_mem_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMALLOC_END = common dso_local global i64 0, align 8
@DMA_MEM_TYPE_DMA = common dso_local global i32 0, align 4
@DMA_MEM_TYPE_VMALLOC = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i64 0, align 8
@DMA_MEM_TYPE_KMALLOC = common dso_local global i32 0, align 4
@DMA_MEM_TYPE_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_mem_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @VMALLOC_END, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DMA_MEM_TYPE_DMA, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @is_vmalloc_addr(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @DMA_MEM_TYPE_VMALLOC, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PAGE_OFFSET, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @DMA_MEM_TYPE_KMALLOC, align 4
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @DMA_MEM_TYPE_USER, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %22, %16, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
