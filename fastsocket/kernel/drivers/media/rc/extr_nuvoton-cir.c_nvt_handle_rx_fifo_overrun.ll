; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_handle_rx_fifo_overrun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_handle_rx_fifo_overrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32, i64 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RX FIFO overrun detected, flushing data!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_handle_rx_fifo_overrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_handle_rx_fifo_overrun(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %3 = load i32, i32* @KERN_WARNING, align 4
  %4 = call i32 @nvt_pr(i32 %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %6 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %8 = call i32 @nvt_clear_cir_fifo(%struct.nvt_dev* %7)
  %9 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %10 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ir_raw_event_reset(i32 %11)
  ret void
}

declare dso_local i32 @nvt_pr(i32, i8*) #1

declare dso_local i32 @nvt_clear_cir_fifo(%struct.nvt_dev*) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
