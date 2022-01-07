; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_setup_DMA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_setup_DMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64, i64* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (i32)* }

@raw_cmd = common dso_local global %struct.TYPE_4__* null, align 8
@FD_RAW_READ = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_6__* null, align 8
@virtual_dma_port = common dso_local global i32 0, align 4
@cont = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_DMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_DMA() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @claim_dma_lock()
  store i64 %2, i64* %1, align 8
  %3 = call i32 (...) @fd_disable_dma()
  %4 = call i32 (...) @fd_clear_dma_ff()
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @fd_cacheflush(i64 %7, i64 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FD_RAW_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i32, i32* @DMA_MODE_READ, align 4
  br label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @DMA_MODE_WRITE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i32 @fd_set_dma_mode(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @fd_set_dma_addr(i64 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @fd_set_dma_count(i64 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @FDCS, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @virtual_dma_port, align 4
  %36 = call i32 (...) @fd_enable_dma()
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @release_dma_lock(i64 %37)
  %39 = call i32 (...) @floppy_disable_hlt()
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @fd_disable_dma(...) #1

declare dso_local i32 @fd_clear_dma_ff(...) #1

declare dso_local i32 @fd_cacheflush(i64, i64) #1

declare dso_local i32 @fd_set_dma_mode(i32) #1

declare dso_local i32 @fd_set_dma_addr(i64) #1

declare dso_local i32 @fd_set_dma_count(i64) #1

declare dso_local i32 @fd_enable_dma(...) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @floppy_disable_hlt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
