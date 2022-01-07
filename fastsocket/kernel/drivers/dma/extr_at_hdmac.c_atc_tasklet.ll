; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"BUG: channel enabled in tasklet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @atc_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.at_dma_chan*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.at_dma_chan*
  store %struct.at_dma_chan* %5, %struct.at_dma_chan** %3, align 8
  %6 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %7 = call i64 @atc_chan_is_enabled(%struct.at_dma_chan* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %10, i32 0, i32 2
  %12 = call i32 @chan2dev(i32* %11)
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %18, i32 0, i32 1
  %20 = call i64 @test_and_clear_bit(i32 0, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %24 = call i32 @atc_handle_error(%struct.at_dma_chan* %23)
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %27 = call i32 @atc_advance_work(%struct.at_dma_chan* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28, %9
  ret void
}

declare dso_local i64 @atc_chan_is_enabled(%struct.at_dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @atc_handle_error(%struct.at_dma_chan*) #1

declare dso_local i32 @atc_advance_work(%struct.at_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
