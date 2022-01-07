; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_2g5g_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_2g5g_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i64, i32 }

@AR_MCI_TX_CTRL = common dso_local global i32 0, align 4
@AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE = common dso_local global i32 0, align 4
@AR_PHY_GLB_CONTROL = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_DISABLE_OSLA = common dso_local global i32 0, align 4
@AR_SELFGEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_mci_2g5g_switch(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ath9k_hw_mci* %8, %struct.ath9k_hw_mci** %5, align 8
  %9 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %10 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %70

17:                                               ; preds = %13, %2
  %18 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %19 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i32 @ar9003_mci_send_2g5g_status(%struct.ath_hw* %23, i32 1)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i32 @ar9003_mci_send_lna_transfer(%struct.ath_hw* %25, i32 1)
  %27 = call i32 @udelay(i32 5)
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = load i32, i32* @AR_MCI_TX_CTRL, align 4
  %30 = load i32, i32* @AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE, align 4
  %31 = call i32 @REG_CLR_BIT(%struct.ath_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_PHY_GLB_CONTROL, align 4
  %34 = load i32, i32* @AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL, align 4
  %35 = call i32 @REG_CLR_BIT(%struct.ath_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %37 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATH_MCI_CONFIG_DISABLE_OSLA, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = call i32 @ar9003_mci_osla_setup(%struct.ath_hw* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %22
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = call i64 @AR_SREV_9462(%struct.ath_hw* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = load i32, i32* @AR_SELFGEN_MASK, align 4
  %52 = call i32 @REG_WRITE(%struct.ath_hw* %50, i32 %51, i32 2)
  br label %53

53:                                               ; preds = %49, %45
  br label %70

54:                                               ; preds = %17
  %55 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %56 = call i32 @ar9003_mci_send_lna_take(%struct.ath_hw* %55, i32 1)
  %57 = call i32 @udelay(i32 5)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %59 = load i32, i32* @AR_MCI_TX_CTRL, align 4
  %60 = load i32, i32* @AR_MCI_TX_CTRL_DISABLE_LNA_UPDATE, align 4
  %61 = call i32 @REG_SET_BIT(%struct.ath_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %63 = load i32, i32* @AR_PHY_GLB_CONTROL, align 4
  %64 = load i32, i32* @AR_BTCOEX_CTRL_BT_OWN_SPDT_CTRL, align 4
  %65 = call i32 @REG_SET_BIT(%struct.ath_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = call i32 @ar9003_mci_osla_setup(%struct.ath_hw* %66, i32 0)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %69 = call i32 @ar9003_mci_send_2g5g_status(%struct.ath_hw* %68, i32 1)
  br label %70

70:                                               ; preds = %16, %54, %53
  ret void
}

declare dso_local i32 @ar9003_mci_send_2g5g_status(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_lna_transfer(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_osla_setup(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_send_lna_take(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
