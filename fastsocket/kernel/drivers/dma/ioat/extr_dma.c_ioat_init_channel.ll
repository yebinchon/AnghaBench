; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_init_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_init_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { %struct.ioat_chan_common**, i64, %struct.dma_device }
%struct.dma_device = type { i32 }
%struct.ioat_chan_common = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, %struct.ioatdma_device* }
%struct.TYPE_4__ = type { void (i64)*, i64 }
%struct.TYPE_3__ = type { i32, %struct.dma_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioat_init_channel(%struct.ioatdma_device* %0, %struct.ioat_chan_common* %1, i32 %2, void (i64)* %3, void (i64)* %4, i64 %5) #0 {
  %7 = alloca %struct.ioatdma_device*, align 8
  %8 = alloca %struct.ioat_chan_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (i64)*, align 8
  %11 = alloca void (i64)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dma_device*, align 8
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %7, align 8
  store %struct.ioat_chan_common* %1, %struct.ioat_chan_common** %8, align 8
  store i32 %2, i32* %9, align 4
  store void (i64)* %3, void (i64)** %10, align 8
  store void (i64)* %4, void (i64)** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ioatdma_device*, %struct.ioatdma_device** %7, align 8
  %15 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %14, i32 0, i32 2
  store %struct.dma_device* %15, %struct.dma_device** %13, align 8
  %16 = load %struct.ioatdma_device*, %struct.ioatdma_device** %7, align 8
  %17 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %18 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %17, i32 0, i32 5
  store %struct.ioatdma_device* %16, %struct.ioatdma_device** %18, align 8
  %19 = load %struct.ioatdma_device*, %struct.ioatdma_device** %7, align 8
  %20 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 128, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %28 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %30 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %33 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %34 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store %struct.dma_device* %32, %struct.dma_device** %35, align 8
  %36 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %37 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %40 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %43 = load %struct.ioatdma_device*, %struct.ioatdma_device** %7, align 8
  %44 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %43, i32 0, i32 0
  %45 = load %struct.ioat_chan_common**, %struct.ioat_chan_common*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ioat_chan_common*, %struct.ioat_chan_common** %45, i64 %47
  store %struct.ioat_chan_common* %42, %struct.ioat_chan_common** %48, align 8
  %49 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %50 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %49, i32 0, i32 1
  %51 = call i32 @init_timer(%struct.TYPE_4__* %50)
  %52 = load void (i64)*, void (i64)** %10, align 8
  %53 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %54 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store void (i64)* %52, void (i64)** %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %58 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %61 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %60, i32 0, i32 0
  %62 = load void (i64)*, void (i64)** %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @tasklet_init(i32* %61, void (i64)* %62, i64 %63)
  %65 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %8, align 8
  %66 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %65, i32 0, i32 0
  %67 = call i32 @tasklet_disable(i32* %66)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @tasklet_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
