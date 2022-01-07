; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_restart_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_restart_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat2_dma_chan = type { %struct.ioat_chan_common }
%struct.ioat_chan_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat2_dma_chan*)* @ioat2_restart_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat2_restart_channel(%struct.ioat2_dma_chan* %0) #0 {
  %2 = alloca %struct.ioat2_dma_chan*, align 8
  %3 = alloca %struct.ioat_chan_common*, align 8
  %4 = alloca i64, align 8
  store %struct.ioat2_dma_chan* %0, %struct.ioat2_dma_chan** %2, align 8
  %5 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.ioat2_dma_chan, %struct.ioat2_dma_chan* %5, i32 0, i32 0
  store %struct.ioat_chan_common* %6, %struct.ioat_chan_common** %3, align 8
  %7 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %8 = call i32 @ioat2_quiesce(%struct.ioat_chan_common* %7, i32 0)
  %9 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %3, align 8
  %10 = call i64 @ioat_cleanup_preamble(%struct.ioat_chan_common* %9, i64* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %2, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @__cleanup(%struct.ioat2_dma_chan* %13, i64 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.ioat2_dma_chan*, %struct.ioat2_dma_chan** %2, align 8
  %18 = call i32 @__ioat2_restart_chan(%struct.ioat2_dma_chan* %17)
  ret void
}

declare dso_local i32 @ioat2_quiesce(%struct.ioat_chan_common*, i32) #1

declare dso_local i64 @ioat_cleanup_preamble(%struct.ioat_chan_common*, i64*) #1

declare dso_local i32 @__cleanup(%struct.ioat2_dma_chan*, i64) #1

declare dso_local i32 @__ioat2_restart_chan(%struct.ioat2_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
