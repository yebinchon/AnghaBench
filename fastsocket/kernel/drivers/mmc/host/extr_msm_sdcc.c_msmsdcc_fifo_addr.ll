; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_fifo_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_fifo_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msmsdcc_host = type { i32 }

@MSM_SDC1_PHYS = common dso_local global i64 0, align 8
@MMCIFIFO = common dso_local global i64 0, align 8
@MSM_SDC2_PHYS = common dso_local global i64 0, align 8
@MSM_SDC3_PHYS = common dso_local global i64 0, align 8
@MSM_SDC4_PHYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msmsdcc_fifo_addr(%struct.msmsdcc_host* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.msmsdcc_host*, align 8
  store %struct.msmsdcc_host* %0, %struct.msmsdcc_host** %3, align 8
  %4 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %3, align 8
  %5 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 4, label %19
  ]

7:                                                ; preds = %1
  %8 = load i64, i64* @MSM_SDC1_PHYS, align 8
  %9 = load i64, i64* @MMCIFIFO, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load i64, i64* @MSM_SDC2_PHYS, align 8
  %13 = load i64, i64* @MMCIFIFO, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %2, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load i64, i64* @MSM_SDC3_PHYS, align 8
  %17 = load i64, i64* @MMCIFIFO, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %2, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load i64, i64* @MSM_SDC4_PHYS, align 8
  %21 = load i64, i64* @MMCIFIFO, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %2, align 8
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @BUG()
  store i64 0, i64* %2, align 8
  br label %25

25:                                               ; preds = %23, %19, %15, %11, %7
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
