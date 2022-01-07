; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_send_statistics_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwl_send_statistics_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_statistics_cmd = type { i32 }

@IWL_STATS_CONF_CLEAR_STATS = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@REPLY_STATISTICS_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_send_statistics_request(%struct.iwl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_statistics_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwl_statistics_cmd, %struct.iwl_statistics_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @IWL_STATS_CONF_CLEAR_STATS, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CMD_ASYNC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %23 = load i32, i32* @REPLY_STATISTICS_CMD, align 4
  %24 = load i32, i32* @CMD_ASYNC, align 4
  %25 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %22, i32 %23, i32 %24, i32 4, %struct.iwl_statistics_cmd* %8)
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %15
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %28 = load i32, i32* @REPLY_STATISTICS_CMD, align 4
  %29 = load i32, i32* @CMD_SYNC, align 4
  %30 = call i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %27, i32 %28, i32 %29, i32 4, %struct.iwl_statistics_cmd* %8)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_statistics_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
