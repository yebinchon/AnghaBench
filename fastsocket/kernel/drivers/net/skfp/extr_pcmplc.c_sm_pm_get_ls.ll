; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_sm_pm_get_ls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_sm_pm_get_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@PL_STATUS_A = common dso_local global i32 0, align 4
@PL_LINE_ST = common dso_local global i32 0, align 4
@PC_QLS = common dso_local global i32 0, align 4
@PC_MLS = common dso_local global i32 0, align 4
@PC_HLS = common dso_local global i32 0, align 4
@PC_ILS = common dso_local global i32 0, align 4
@PC_LS_PDR = common dso_local global i32 0, align 4
@PC_LS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_pm_get_ls(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PL_STATUS_A, align 4
  %8 = call i32 @PLC(i32 %6, i32 %7)
  %9 = call i32 @inpw(i32 %8)
  %10 = load i32, i32* @PL_LINE_ST, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 129, label %15
    i32 132, label %17
    i32 130, label %19
    i32 131, label %19
    i32 133, label %21
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @PC_QLS, align 4
  store i32 %14, i32* %5, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @PC_MLS, align 4
  store i32 %16, i32* %5, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @PC_HLS, align 4
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @PC_ILS, align 4
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @PC_LS_PDR, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @PC_LS_NONE, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
