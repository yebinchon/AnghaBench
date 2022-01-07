; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_d3_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_d3_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32*, i32, i32, i32 }

@IWL_UCODE_WOWLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to start WoWLAN firmware: %d\0A\00", align 1
@IWL_MVM_STATION_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_load_d3_fw(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 4
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
  br label %81

17:                                               ; preds = %1
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = load i32, i32* @IWL_UCODE_WOWLAN, align 4
  %20 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @IWL_ERR(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %75

27:                                               ; preds = %17
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @iwl_fw_valid_tx_ant(i32 %31)
  %33 = call i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %28, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %75

37:                                               ; preds = %27
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iwl_send_phy_db_data(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %75

45:                                               ; preds = %37
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %47 = call i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %75

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %65, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IWL_MVM_STATION_COUNT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @RCU_INIT_POINTER(i32 %63, i32* null)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %70 = call i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %81

75:                                               ; preds = %73, %50, %44, %36, %23
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @iwl_trans_stop_device(i32 %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %74, %15
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_trans_start_hw(i32) #1

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @iwl_send_phy_db_data(i32) #1

declare dso_local i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @iwl_mvm_add_aux_sta(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_trans_stop_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
