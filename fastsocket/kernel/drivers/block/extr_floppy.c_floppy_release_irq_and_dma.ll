; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_release_irq_and_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_release_irq_and_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@floppy_usage_lock = common dso_local global i32 0, align 4
@usage_count = common dso_local global i64 0, align 8
@irqdma_allocated = common dso_local global i64 0, align 8
@floppy_track_buffer = common dso_local global i32* null, align 8
@max_buffer_sectors = common dso_local global i32 0, align 4
@buffer_max = common dso_local global i32 0, align 4
@buffer_min = common dso_local global i32 0, align 4
@fdc = common dso_local global i32 0, align 4
@N_FDC = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@fd_timeout = common dso_local global i32 0, align 4
@fd_timer = common dso_local global i32 0, align 4
@floppy_work = common dso_local global i32 0, align 4
@motor_off_timer = common dso_local global i32* null, align 8
@timeout_message = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @floppy_release_irq_and_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_release_irq_and_dma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @floppy_usage_lock, i64 %5)
  %7 = load i64, i64* @usage_count, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @usage_count, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %11)
  br label %59

13:                                               ; preds = %0
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %14)
  %16 = load i64, i64* @irqdma_allocated, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 (...) @fd_disable_dma()
  %20 = call i32 (...) @fd_free_dma()
  %21 = call i32 (...) @fd_free_irq()
  store i64 0, i64* @irqdma_allocated, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = call i32 @set_dor(i32 0, i32 -1, i32 8)
  %24 = call i32 (...) @floppy_enable_hlt()
  %25 = load i32*, i32** @floppy_track_buffer, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* @max_buffer_sectors, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* @max_buffer_sectors, align 4
  %32 = mul nsw i32 %31, 1024
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %2, align 8
  %34 = load i32*, i32** @floppy_track_buffer, align 8
  %35 = ptrtoint i32* %34 to i64
  store i64 %35, i64* %3, align 8
  store i32* null, i32** @floppy_track_buffer, align 8
  store i32 0, i32* @max_buffer_sectors, align 4
  store i32 -1, i32* @buffer_max, align 4
  store i32 -1, i32* @buffer_min, align 4
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %2, align 8
  %38 = call i32 @fd_dma_mem_free(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %30, %27, %22
  %40 = load i32, i32* @fdc, align 4
  store i32 %40, i32* %1, align 4
  store i32 0, i32* @fdc, align 4
  br label %41

41:                                               ; preds = %54, %39
  %42 = load i32, i32* @fdc, align 4
  %43 = load i32, i32* @N_FDC, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @fdc, align 4
  %52 = call i32 @floppy_release_regions(i32 %51)
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @fdc, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @fdc, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* %1, align 4
  store i32 %58, i32* @fdc, align 4
  br label %59

59:                                               ; preds = %57, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fd_disable_dma(...) #1

declare dso_local i32 @fd_free_dma(...) #1

declare dso_local i32 @fd_free_irq(...) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @floppy_enable_hlt(...) #1

declare dso_local i32 @fd_dma_mem_free(i64, i64) #1

declare dso_local i32 @floppy_release_regions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
