; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_cleanup_preamble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma.c_ioat_cleanup_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_chan_common = type { i64, i32, i32 }

@IOAT_COMPLETION_ACK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@COMPLETION_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioat_cleanup_preamble(%struct.ioat_chan_common* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ioat_chan_common*, align 8
  %5 = alloca i64*, align 8
  store %struct.ioat_chan_common* %0, %struct.ioat_chan_common** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %7 = call i64 @ioat_get_current_completion(%struct.ioat_chan_common* %6)
  %8 = load i64*, i64** %5, align 8
  store i64 %7, i64* %8, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %12 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load i32, i32* @IOAT_COMPLETION_ACK, align 4
  %18 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %19 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %18, i32 0, i32 2
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load %struct.ioat_chan_common*, %struct.ioat_chan_common** %4, align 8
  %22 = getelementptr inbounds %struct.ioat_chan_common, %struct.ioat_chan_common* %21, i32 0, i32 1
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @COMPLETION_TIMEOUT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @mod_timer(i32* %22, i64 %25)
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @ioat_get_current_completion(%struct.ioat_chan_common*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
