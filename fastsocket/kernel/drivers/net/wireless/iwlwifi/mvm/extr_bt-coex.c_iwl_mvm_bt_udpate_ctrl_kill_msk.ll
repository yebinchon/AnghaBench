; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_udpate_ctrl_kill_msk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_udpate_ctrl_kill_msk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.iwl_bt_coex_profile_notif }
%struct.iwl_bt_coex_profile_notif = type { i32 }
%struct.iwl_bt_coex_cmd = type { i32, i8*, i8* }

@BT_KILL_MSK_REDUCED_TXPOW = common dso_local global i32 0, align 4
@SCO_STATE = common dso_local global i32 0, align 4
@A2DP_STATE = common dso_local global i32 0, align 4
@SNIFF_STATE = common dso_local global i32 0, align 4
@BT_KILL_MSK_SCO_HID_A2DP = common dso_local global i32 0, align 4
@BT_KILL_MSK_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Update kill_msk: %d - SCO %sactive A2DP %sactive SNIFF %sactive\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@iwl_bt_ack_kill_msk = common dso_local global i32* null, align 8
@iwl_bt_cts_kill_msk = common dso_local global i32* null, align 8
@BT_VALID_KILL_ACK = common dso_local global i32 0, align 4
@BT_VALID_KILL_CTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"bt_kill_msk = %d\0A\00", align 1
@BT_CONFIG = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_mvm_bt_udpate_ctrl_kill_msk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_bt_udpate_ctrl_kill_msk(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_bt_coex_cmd, align 8
  %8 = alloca %struct.iwl_bt_coex_profile_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.iwl_bt_coex_cmd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 2
  store %struct.iwl_bt_coex_profile_notif* %11, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @BT_KILL_MSK_REDUCED_TXPOW, align 4
  store i32 %18, i32* %6, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %21 = load i32, i32* @SCO_STATE, align 4
  %22 = call i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif* %20, i32 3, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %26 = load i32, i32* @A2DP_STATE, align 4
  %27 = call i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif* %25, i32 3, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %31 = load i32, i32* @SNIFF_STATE, align 4
  %32 = call i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif* %30, i32 3, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24, %19
  %35 = load i32, i32* @BT_KILL_MSK_SCO_HID_A2DP, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @BT_KILL_MSK_DEFAULT, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %43 = load i32, i32* @SCO_STATE, align 4
  %44 = call i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif* %42, i32 3, i32 %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %49 = load i32, i32* @A2DP_STATE, align 4
  %50 = call i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif* %48, i32 3, i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %54 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %8, align 8
  %55 = load i32, i32* @SNIFF_STATE, align 4
  %56 = call i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif* %54, i32 3, i32 %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %47, i8* %53, i8* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %97

67:                                               ; preds = %39
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** @iwl_bt_ack_kill_msk, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = getelementptr inbounds %struct.iwl_bt_coex_cmd, %struct.iwl_bt_coex_cmd* %7, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = load i32*, i32** @iwl_bt_cts_kill_msk, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = getelementptr inbounds %struct.iwl_bt_coex_cmd, %struct.iwl_bt_coex_cmd* %7, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @BT_VALID_KILL_ACK, align 4
  %86 = load i32, i32* @BT_VALID_KILL_CTS, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = getelementptr inbounds %struct.iwl_bt_coex_cmd, %struct.iwl_bt_coex_cmd* %7, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_COEX(%struct.iwl_mvm* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %94 = load i32, i32* @BT_CONFIG, align 4
  %95 = load i32, i32* @CMD_SYNC, align 4
  %96 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %93, i32 %94, i32 %95, i32 24, %struct.iwl_bt_coex_cmd* %7)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %67, %66
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i64 @BT_MBOX_MSG(%struct.iwl_bt_coex_profile_notif*, i32, i32) #2

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i32, ...) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_bt_coex_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
