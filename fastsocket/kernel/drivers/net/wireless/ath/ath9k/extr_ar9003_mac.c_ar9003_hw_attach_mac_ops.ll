; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_attach_mac_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ar9003_hw_attach_mac_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_ops = type { i32, i32, i32, i32, i32 }

@ar9003_hw_rx_enable = common dso_local global i32 0, align 4
@ar9003_hw_set_desc_link = common dso_local global i32 0, align 4
@ar9003_hw_get_isr = common dso_local global i32 0, align 4
@ar9003_set_txdesc = common dso_local global i32 0, align 4
@ar9003_hw_proc_txdesc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_attach_mac_ops(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_hw_ops*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw* %4)
  store %struct.ath_hw_ops* %5, %struct.ath_hw_ops** %3, align 8
  %6 = load i32, i32* @ar9003_hw_rx_enable, align 4
  %7 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ar9003_hw_set_desc_link, align 4
  %10 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ar9003_hw_get_isr, align 4
  %13 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ar9003_set_txdesc, align 4
  %16 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ar9003_hw_proc_txdesc, align 4
  %19 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
