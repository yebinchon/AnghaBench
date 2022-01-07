; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_mute_bt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_mute_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_MCI_MSG_ATTRIBUTES_TABLE = common dso_local global i32 0, align 4
@AR_MCI_TX_CTRL = common dso_local global i32 0, align 4
@AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_mci_mute_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_mci_mute_bt(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = load i32, i32* @AR_MCI_MSG_ATTRIBUTES_TABLE, align 4
  %5 = call i32 @REG_WRITE(%struct.ath_hw* %3, i32 %4, i32 -65536)
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = load i32, i32* @AR_MCI_TX_CTRL, align 4
  %8 = load i32, i32* @AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE, align 4
  %9 = call i32 @REG_SET_BIT(%struct.ath_hw* %6, i32 %7, i32 %8)
  %10 = call i32 @udelay(i32 10)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call i32 @ar9003_mci_send_lna_take(%struct.ath_hw* %11, i32 1)
  %13 = call i32 @udelay(i32 5)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = call i32 @ar9003_mci_send_sys_sleeping(%struct.ath_hw* %14, i32 1)
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ar9003_mci_send_lna_take(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_sys_sleeping(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
