; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_flush_tx_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_flush_tx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_tx_path_flush_cmd = type { i32, i32 }

@DUMP_TX_FIFO_FLUSH = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@TXPATH_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to send flush command (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_flush_tx_path(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_tx_path_flush_cmd, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd, %struct.iwl_tx_path_flush_cmd* %8, i32 0, i32 0
  %11 = load i32, i32* @DUMP_TX_FIFO_FLUSH, align 4
  %12 = call i32 @cpu_to_le16(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.iwl_tx_path_flush_cmd, %struct.iwl_tx_path_flush_cmd* %8, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @CMD_SYNC, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @CMD_ASYNC, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %9, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = load i32, i32* @TXPATH_FLUSH, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %24, i32 %25, i32 %26, i32 8, %struct.iwl_tx_path_flush_cmd* %8)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @IWL_ERR(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tx_path_flush_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
