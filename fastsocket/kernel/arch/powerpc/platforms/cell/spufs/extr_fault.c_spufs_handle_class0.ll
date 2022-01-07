; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_fault.c_spufs_handle_class0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_fault.c_spufs_handle_class0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CLASS0_INTR_MASK = common dso_local global i64 0, align 8
@CLASS0_DMA_ALIGNMENT_INTR = common dso_local global i64 0, align 8
@SPE_EVENT_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@CLASS0_INVALID_DMA_COMMAND_INTR = common dso_local global i64 0, align 8
@SPE_EVENT_INVALID_DMA = common dso_local global i32 0, align 4
@CLASS0_SPU_ERROR_INTR = common dso_local global i64 0, align 8
@SPE_EVENT_SPE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spufs_handle_class0(%struct.spu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i64, align 8
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  %5 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %6 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CLASS0_INTR_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @CLASS0_DMA_ALIGNMENT_INTR, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %25 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %26 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SPE_EVENT_DMA_ALIGNMENT, align 4
  %30 = call i32 @spufs_handle_event(%struct.spu_context* %24, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @CLASS0_INVALID_DMA_COMMAND_INTR, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %38 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %39 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SPE_EVENT_INVALID_DMA, align 4
  %43 = call i32 @spufs_handle_event(%struct.spu_context* %37, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @CLASS0_SPU_ERROR_INTR, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %51 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %52 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SPE_EVENT_SPE_ERROR, align 4
  %56 = call i32 @spufs_handle_event(%struct.spu_context* %50, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %59 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spufs_handle_event(%struct.spu_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
