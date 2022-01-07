; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i8*, i32 }

@AR_BTCOEX_CTRL = common dso_local global i32 0, align 4
@AR_BTCOEX_CTRL_MCI_MODE_EN = common dso_local global i32 0, align 4
@AR_MCI_RX_STATUS = common dso_local global i32 0, align 4
@AR_MCI_RX_LAST_SCHD_MSG_INDEX = common dso_local global i32 0, align 4
@AR_MCI_RX_REMOTE_SLEEP = common dso_local global i32 0, align 4
@MCI_BT_SLEEP = common dso_local global i8* null, align 8
@MCI_BT_AWAKE = common dso_local global i8* null, align 8
@ATH_MCI_CONFIG_MCI_OBS_MASK = common dso_local global i32 0, align 4
@AR_GLB_GPIO_CONTROL = common dso_local global i32 0, align 4
@ATH_MCI_CONFIG_MCI_OBS_GPIO = common dso_local global i32 0, align 4
@MCI_GPM_COEX_QUERY_BT_TOPOLOGY = common dso_local global i32 0, align 4
@MCI_RECOVERY_DUR_TSF = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(MCI) ignore Rx recovery\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"(MCI) RECOVER RX\0A\00", align 1
@ATH_MCI_CONFIG_DISABLE_FTP_STOMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_mci_state(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_hw_mci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ath9k_hw_mci* %11, %struct.ath9k_hw_mci** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %166 [
    i32 138, label %13
    i32 137, label %33
    i32 133, label %41
    i32 128, label %55
    i32 132, label %73
    i32 129, label %97
    i32 130, label %100
    i32 131, label %103
    i32 134, label %108
    i32 135, label %141
    i32 136, label %150
  ]

13:                                               ; preds = %2
  %14 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = load i32, i32* @AR_BTCOEX_CTRL, align 4
  %21 = call i32 @REG_READ(%struct.ath_hw* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -559038737
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* @AR_BTCOEX_CTRL_MCI_MODE_EN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %167

33:                                               ; preds = %2
  %34 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %35 = load i32, i32* @AR_MCI_RX_STATUS, align 4
  %36 = call i32 @REG_READ(%struct.ath_hw* %34, i32 %35)
  %37 = load i32, i32* @AR_MCI_RX_LAST_SCHD_MSG_INDEX, align 4
  %38 = call i32 @MS(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 4
  store i32 %40, i32* %6, align 4
  br label %167

41:                                               ; preds = %2
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* @AR_MCI_RX_STATUS, align 4
  %44 = call i32 @REG_READ(%struct.ath_hw* %42, i32 %43)
  %45 = load i32, i32* @AR_MCI_RX_REMOTE_SLEEP, align 4
  %46 = call i32 @MS(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i8*, i8** @MCI_BT_SLEEP, align 8
  br label %52

50:                                               ; preds = %41
  %51 = load i8*, i8** @MCI_BT_AWAKE, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ]
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %6, align 4
  br label %167

55:                                               ; preds = %2
  %56 = load i8*, i8** @MCI_BT_AWAKE, align 8
  %57 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %58 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %60 = call i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw* %59, i32 1)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = call i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %61, i32 1)
  %63 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %64 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %69 = call i32 @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw* %68, i32 0, i32 1)
  br label %70

70:                                               ; preds = %67, %55
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %71, i32 0)
  br label %167

73:                                               ; preds = %2
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = call i32 @ar9003_mci_reset_req_wakeup(%struct.ath_hw* %74)
  %76 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %77 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %79 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %73
  %85 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %86 = load i32, i32* @AR_GLB_GPIO_CONTROL, align 4
  %87 = call i32 @REG_READ(%struct.ath_hw* %85, i32 %86)
  %88 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_GPIO, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @ATH_MCI_CONFIG_MCI_OBS_GPIO, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %94 = call i32 @ar9003_mci_observation_set_up(%struct.ath_hw* %93)
  br label %95

95:                                               ; preds = %92, %84
  br label %96

96:                                               ; preds = %95, %73
  br label %167

97:                                               ; preds = %2
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = call i32 @ar9003_mci_send_coex_version_response(%struct.ath_hw* %98, i32 1)
  br label %167

100:                                              ; preds = %2
  %101 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %102 = call i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw* %101, i32 1)
  br label %167

103:                                              ; preds = %2
  %104 = load i32, i32* @MCI_GPM_COEX_QUERY_BT_TOPOLOGY, align 4
  store i32 %104, i32* %8, align 4
  %105 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ar9003_mci_send_coex_bt_status_query(%struct.ath_hw* %105, i32 1, i32 %106)
  br label %167

108:                                              ; preds = %2
  %109 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %110 = call i32 @ath9k_hw_gettsf32(%struct.ath_hw* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %113 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %111, %114
  %116 = load i32, i32* @MCI_RECOVERY_DUR_TSF, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %120 = call i32 @ath9k_hw_common(%struct.ath_hw* %119)
  %121 = load i32, i32* @MCI, align 4
  %122 = call i32 @ath_dbg(i32 %120, i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %167

123:                                              ; preds = %108
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = call i32 @ath9k_hw_common(%struct.ath_hw* %124)
  %126 = load i32, i32* @MCI, align 4
  %127 = call i32 @ath_dbg(i32 %125, i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %130 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %132 = call i32 @ar9003_mci_prep_interface(%struct.ath_hw* %131)
  %133 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %134 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %133, i32 0, i32 3
  store i32 1, i32* %134, align 4
  %135 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %136 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %135, i32 0, i32 4
  store i32 1, i32* %136, align 8
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = call i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw* %137, i32 1)
  %139 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %140 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %139, i32 0)
  br label %167

141:                                              ; preds = %2
  %142 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %143 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ATH_MCI_CONFIG_DISABLE_FTP_STOMP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %6, align 4
  br label %167

150:                                              ; preds = %2
  %151 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %152 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %157 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br label %160

160:                                              ; preds = %155, %150
  %161 = phi i1 [ false, %150 ], [ %159, %155 ]
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  store i32 %163, i32* %6, align 4
  %164 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %5, align 8
  %165 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %164, i32 0, i32 4
  store i32 0, i32* %165, align 8
  br label %167

166:                                              ; preds = %2
  br label %167

167:                                              ; preds = %166, %160, %141, %123, %118, %103, %100, %97, %96, %70, %52, %33, %29
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_version_query(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_wlan_channels(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_halt_bt_gpm(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_2g5g_switch(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_reset_req_wakeup(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_observation_set_up(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_send_coex_version_response(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9003_mci_send_coex_bt_status_query(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_gettsf32(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_prep_interface(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
