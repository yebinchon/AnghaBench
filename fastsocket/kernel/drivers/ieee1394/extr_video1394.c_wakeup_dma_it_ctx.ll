; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_wakeup_dma_it_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_wakeup_dma_it_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_iso_ctx = type { i32, i64*, i32*, i64*, i32, i32, i32*, %struct.TYPE_4__**, %struct.ti_ohci* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ti_ohci = type { i32 }

@VIDEO1394_BUFFER_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wakeup_dma_it_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_dma_it_ctx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dma_iso_ctx*, align 8
  %4 = alloca %struct.ti_ohci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.dma_iso_ctx*
  store %struct.dma_iso_ctx* %8, %struct.dma_iso_ctx** %3, align 8
  %9 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %9, i32 0, i32 8
  %11 = load %struct.ti_ohci*, %struct.ti_ohci** %10, align 8
  store %struct.ti_ohci* %11, %struct.ti_ohci** %4, align 8
  %12 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %12, i32 0, i32 5
  %14 = call i32 @spin_lock(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %85, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %15
  %22 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %22, i32 0, i32 7
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_le32(i32 -65536)
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %21
  %44 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.ti_ohci*, %struct.ti_ohci** %4, align 8
  %52 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @put_timestamp(%struct.ti_ohci* %51, %struct.dma_iso_ctx* %52, i32 %53)
  %55 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %55, i32 0, i32 7
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @VIDEO1394_BUFFER_READY, align 4
  %73 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %75, i64 %82
  store i32 %72, i32* %83, align 4
  br label %84

84:                                               ; preds = %43, %21
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %15

88:                                               ; preds = %15
  %89 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %89, i32 0, i32 5
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %92, i32 0, i32 4
  %94 = call i64 @waitqueue_active(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.dma_iso_ctx*, %struct.dma_iso_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.dma_iso_ctx, %struct.dma_iso_ctx* %97, i32 0, i32 4
  %99 = call i32 @wake_up_interruptible(i32* %98)
  br label %100

100:                                              ; preds = %96, %88
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_timestamp(%struct.ti_ohci*, %struct.dma_iso_ctx*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
