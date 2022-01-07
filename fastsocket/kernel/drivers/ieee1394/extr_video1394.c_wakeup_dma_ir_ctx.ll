; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_wakeup_dma_ir_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_wakeup_dma_ir_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i32, i64*, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@VIDEO1394_BUFFER_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wakeup_dma_ir_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_dma_ir_ctx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dma_iso_ctx*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.dma_iso_ctx*
  store %struct.dma_iso_ctx* %6, %struct.dma_iso_ctx** %3, align 8
  %7 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %7, i32 0, i32 5
  %9 = call i32 @spin_lock(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %83, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %10
  %17 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %17, i32 0, i32 9
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le32(i32 -65536)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %16
  %36 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @reset_ir_status(%struct.dma_iso_ctx* %36, i32 %37)
  %39 = load i32, i32* @VIDEO1394_BUFFER_READY, align 4
  %40 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %41 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  store i32 %39, i32* %50, align 4
  %51 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %53, i64 %60
  %62 = call i32 @do_gettimeofday(i32* %61)
  %63 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %63, i32 0, i32 6
  %65 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 %71, %75
  %77 = trunc i64 %76 to i32
  %78 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dma_region_sync_for_cpu(i32* %64, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %35, %16
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %10

86:                                               ; preds = %10
  %87 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %87, i32 0, i32 5
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %90, i32 0, i32 4
  %92 = call i64 @waitqueue_active(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %95, i32 0, i32 4
  %97 = call i32 @wake_up_interruptible(i32* %96)
  br label %98

98:                                               ; preds = %94, %86
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @reset_ir_status(%struct.dma_iso_ctx*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @dma_region_sync_for_cpu(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
