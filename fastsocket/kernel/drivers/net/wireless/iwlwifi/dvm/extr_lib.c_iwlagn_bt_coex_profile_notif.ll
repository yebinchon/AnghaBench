; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_bt_coex_profile_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwlagn_bt_coex_profile_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_bt_coex_profile_notif = type { i64, i64, i64, %struct.iwl_bt_uart_msg }
%struct.iwl_bt_uart_msg = type { i32 }

@IWLAGN_BT_FLAG_COEX_MODE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"BT Coex notification:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"    status: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"    traffic load: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"    CI compliance: %d\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_bt_coex_profile_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_device_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %7 = alloca %struct.iwl_device_cmd*, align 8
  %8 = alloca %struct.iwl_rx_packet*, align 8
  %9 = alloca %struct.iwl_bt_coex_profile_notif*, align 8
  %10 = alloca %struct.iwl_bt_uart_msg*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %6, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %7, align 8
  %11 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %6, align 8
  %12 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %11)
  store %struct.iwl_rx_packet* %12, %struct.iwl_rx_packet** %8, align 8
  %13 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %14 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_bt_coex_profile_notif*
  store %struct.iwl_bt_coex_profile_notif* %17, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %18 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %18, i32 0, i32 3
  store %struct.iwl_bt_uart_msg* %19, %struct.iwl_bt_uart_msg** %10, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IWLAGN_BT_FLAG_COEX_MODE_DISABLED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

26:                                               ; preds = %3
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %28 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %30 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %31 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %35 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %40 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %45 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %10, align 8
  %46 = call i32 @iwlagn_print_uartmsg(%struct.iwl_priv* %44, %struct.iwl_bt_uart_msg* %45)
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %10, align 8
  %53 = call i32 @iwlagn_bt_traffic_is_sco(%struct.iwl_bt_uart_msg* %52)
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %115

61:                                               ; preds = %26
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %66 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %71 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %114

77:                                               ; preds = %69, %61
  %78 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %79 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %90 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %97

91:                                               ; preds = %82
  %92 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %93 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %87
  br label %102

98:                                               ; preds = %77
  %99 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_NONE, align 8
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %104 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %107 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %112 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %111, i32 0, i32 8
  %113 = call i32 @queue_work(i32 %110, i32* %112)
  br label %114

114:                                              ; preds = %102, %69
  br label %115

115:                                              ; preds = %114, %26
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %117 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %10, align 8
  %118 = call i64 @iwlagn_fill_txpower_mode(%struct.iwl_priv* %116, %struct.iwl_bt_uart_msg* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %122 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %10, align 8
  %123 = call i64 @iwlagn_set_kill_msk(%struct.iwl_priv* %121, %struct.iwl_bt_uart_msg* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120, %115
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %127 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %130 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %129, i32 0, i32 6
  %131 = call i32 @queue_work(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %125, %120
  %133 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %9, align 8
  %134 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %137 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %136, i32 0, i32 5
  store i64 %135, i64* %137, align 8
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %132, %25
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwlagn_print_uartmsg(%struct.iwl_priv*, %struct.iwl_bt_uart_msg*) #1

declare dso_local i32 @iwlagn_bt_traffic_is_sco(%struct.iwl_bt_uart_msg*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @iwlagn_fill_txpower_mode(%struct.iwl_priv*, %struct.iwl_bt_uart_msg*) #1

declare dso_local i64 @iwlagn_set_kill_msk(%struct.iwl_priv*, %struct.iwl_bt_uart_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
