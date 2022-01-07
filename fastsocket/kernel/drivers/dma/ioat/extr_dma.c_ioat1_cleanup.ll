; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat1_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat1_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_dma_chan = type { i32, %struct.ioat_chan_common }
%struct.ioat_chan_common = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_dma_chan*)* @ioat1_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat1_cleanup(%struct.ioat_dma_chan* %0) #0 {
  %2 = alloca %struct.ioat_dma_chan*, align 8
  %3 = alloca %struct.ioat_chan_common*, align 8
  %4 = alloca i64, align 8
  store %struct.ioat_dma_chan* %0, %struct.ioat_dma_chan** %2, align 8
  %5 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %5, i32 0, i32 1
  store %struct.ioat_chan_common* %6, %struct.ioat_chan_common** %3, align 8
  %7 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %8 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @prefetch(i32 %9)
  %11 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %12 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %11, i32 0, i32 0
  %13 = call i32 @spin_trylock_bh(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %18 = call i32 @ioat_cleanup_preamble(%struct.ioat_chan_common* %17, i64* %4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %22 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  br label %43

24:                                               ; preds = %16
  %25 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %26 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %25, i32 0, i32 0
  %27 = call i32 @spin_trylock_bh(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %31 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  br label %43

33:                                               ; preds = %24
  %34 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @__cleanup(%struct.ioat_dma_chan* %34, i64 %35)
  %37 = load %struct.ioat_dma_chan*, %struct.ioat_dma_chan** %2, align 8
  %38 = getelementptr inbounds %struct.ioat_dma_chan, %struct.ioat_dma_chan* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %41 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %33, %29, %20, %15
  ret void
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @spin_trylock_bh(i32*) #1

declare dso_local i32 @ioat_cleanup_preamble(%struct.ioat_chan_common*, i64*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__cleanup(%struct.ioat_dma_chan*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
