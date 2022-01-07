; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }

@ACX_REG_INTERRUPT_TRIG_H = common dso_local global i32 0, align 4
@INTR_TRIG_TX_PROC1 = common dso_local global i32 0, align 4
@ACX_REG_INTERRUPT_TRIG = common dso_local global i32 0, align 4
@INTR_TRIG_TX_PROC0 = common dso_local global i32 0, align 4
@TX_STATUS_DATA_OUT_COUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*)* @wl1251_tx_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_tx_trigger(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %5 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %6 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ACX_REG_INTERRUPT_TRIG_H, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @INTR_TRIG_TX_PROC1, align 4
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ACX_REG_INTERRUPT_TRIG, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @INTR_TRIG_TX_PROC0, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @wl1251_reg_write32(%struct.wl1251* %17, i32 %18, i32 %19)
  %21 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @TX_STATUS_DATA_OUT_COUNT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
