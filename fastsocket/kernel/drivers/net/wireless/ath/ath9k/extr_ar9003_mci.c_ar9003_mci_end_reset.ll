; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_end_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_end_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64, i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath9k_hw_cal_data = type { i32, i32, i32 }

@MCI_BT_SLEEP = common dso_local global i64 0, align 8
@AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@MCI_BT_AWAKE = common dso_local global i64 0, align 8
@AR_PHY_TIMING4 = common dso_local global i32 0, align 4
@AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_end_reset(%struct.ath_hw* %0, %struct.ath9k_channel* %1, %struct.ath9k_hw_cal_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca %struct.ath9k_hw_cal_data*, align 8
  %8 = alloca %struct.ath9k_hw_mci*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store %struct.ath9k_hw_cal_data* %2, %struct.ath9k_hw_cal_data** %7, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath9k_hw_mci* %11, %struct.ath9k_hw_mci** %8, align 8
  %12 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %13 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

17:                                               ; preds = %3
  %18 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %19 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %23 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MCI_BT_SLEEP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %17
  br label %89

28:                                               ; preds = %21
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET, align 4
  %31 = call i32 @ar9003_mci_check_int(%struct.ath_hw* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %35 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %36 = call i32 @ar9003_mci_check_int(%struct.ath_hw* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %89

39:                                               ; preds = %33, %28
  %40 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %41 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %42 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REMOTE_RESET, align 4
  %43 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_REQ_WAKE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @REG_WRITE(%struct.ath_hw* %40, i32 %41, i32 %44)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %47 = call i32 @ar9003_mci_remote_reset(%struct.ath_hw* %46, i32 1)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %49 = call i32 @ar9003_mci_send_sys_waking(%struct.ath_hw* %48, i32 1)
  %50 = call i32 @udelay(i32 1)
  %51 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %52 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %56 = call i32 @ar9003_mci_send_lna_transfer(%struct.ath_hw* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %39
  %58 = load i64, i64* @MCI_BT_AWAKE, align 8
  %59 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %8, align 8
  %60 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %62 = load i32, i32* @AR_PHY_TIMING4, align 4
  %63 = load i32, i32* @AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = call i32 @REG_CLR_BIT(%struct.ath_hw* %61, i32 %62, i32 %64)
  %66 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %67 = icmp ne %struct.ath9k_hw_cal_data* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %70 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %72 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %7, align 8
  %74 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %57
  %76 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %77 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %78 = call i32 @ath9k_hw_init_cal(%struct.ath_hw* %76, %struct.ath9k_channel* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %92

83:                                               ; preds = %75
  %84 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %85 = load i32, i32* @AR_PHY_TIMING4, align 4
  %86 = load i32, i32* @AR_PHY_TIMING_CONTROL4_DO_GAIN_DC_IQ_CAL_SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = call i32 @REG_SET_BIT(%struct.ath_hw* %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %38, %27
  %90 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %91 = call i32 @ar9003_mci_enable_interrupt(%struct.ath_hw* %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %80, %16
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_mci_check_int(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_remote_reset(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_sys_waking(%struct.ath_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ar9003_mci_send_lna_transfer(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_init_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_enable_interrupt(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
