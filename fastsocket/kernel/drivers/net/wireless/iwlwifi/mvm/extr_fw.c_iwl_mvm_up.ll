; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_mvm_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_mvm_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm = type { i32, i32*, i32, i32, i32, i32 }

@iwlmvm_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to run INIT ucode: %d\0A\00", align 1
@IWL_UCODE_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to start RT ucode: %d\0A\00", align 1
@IWL_MVM_STATION_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"RT uCode started.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_up(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 5
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @iwl_trans_start_hw(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %117

17:                                               ; preds = %1
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = call i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm* %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @IWL_ERR(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %111

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlmvm_mod_params, i32 0, i32 0), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %117

39:                                               ; preds = %35
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = load i32, i32* @IWL_UCODE_REGULAR, align 4
  %42 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @IWL_ERR(%struct.iwl_mvm* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %111

49:                                               ; preds = %39
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iwl_fw_valid_tx_ant(i32 %53)
  %55 = call i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %50, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %111

59:                                               ; preds = %49
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = call i32 @iwl_send_bt_prio_tbl(%struct.iwl_mvm* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %111

65:                                               ; preds = %59
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %67 = call i32 @iwl_send_bt_init_conf(%struct.iwl_mvm* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %111

71:                                               ; preds = %65
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @iwl_send_phy_db_data(i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %111

79:                                               ; preds = %71
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %81 = call i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %111

85:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %99, %85
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IWL_MVM_STATION_COUNT, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @RCU_INIT_POINTER(i32 %97, i32* null)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %86

102:                                              ; preds = %86
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %104 = call i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %111

108:                                              ; preds = %102
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %110 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %117

111:                                              ; preds = %107, %84, %78, %70, %64, %58, %45, %30
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @iwl_trans_stop_device(i32 %114)
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %111, %108, %38, %15
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_trans_start_hw(i32) #1

declare dso_local i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @iwl_send_bt_prio_tbl(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_bt_init_conf(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_phy_db_data(i32) #1

declare dso_local i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_trans_stop_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
