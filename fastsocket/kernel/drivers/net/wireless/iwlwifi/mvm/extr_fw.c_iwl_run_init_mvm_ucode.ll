; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_run_init_mvm_ucode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_run_init_mvm_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_notification_wait = type { i32 }

@iwl_run_init_mvm_ucode.init_complete = internal constant [2 x i32] [i32 128, i32 129], align 4
@iwl_wait_phy_db_entry = common dso_local global i32 0, align 4
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to start INIT ucode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to read NVM: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to run INIT calibrations: %d\0A\00", align 1
@MVM_UCODE_CALIB_TIMEOUT = common dso_local global i32 0, align 4
@iwlmvm_mod_params = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 6
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %189

16:                                               ; preds = %2
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 3
  %19 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_mvm_ucode.init_complete, i64 0, i64 0))
  %20 = load i32, i32* @iwl_wait_phy_db_entry, align 4
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iwl_init_notification_wait(i32* %18, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_mvm_ucode.init_complete, i64 0, i64 0), i32 %19, i32 %20, i32 %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %26 = load i32, i32* @IWL_UCODE_INIT, align 4
  %27 = call i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @IWL_ERR(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %98

34:                                               ; preds = %16
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = call i32 @iwl_send_bt_prio_tbl(%struct.iwl_mvm* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %98

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %45 = call i32 @iwl_nvm_init(%struct.iwl_mvm* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @IWL_ERR(%struct.iwl_mvm* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %98

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @iwl_nvm_check_version(%struct.TYPE_8__* %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @iwl_fw_valid_tx_ant(i32 %66)
  %68 = call i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm* %63, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  br label %98

72:                                               ; preds = %53
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %74 = call i32 @iwl_set_default_calibrations(%struct.iwl_mvm* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %98

78:                                               ; preds = %72
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %80 = call i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @IWL_ERR(%struct.iwl_mvm* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %98

87:                                               ; preds = %78
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 3
  %90 = load i32, i32* @MVM_UCODE_CALIB_TIMEOUT, align 4
  %91 = call i32 @iwl_wait_notification(i32* %89, %struct.iwl_notification_wait* %6, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %87
  br label %102

98:                                               ; preds = %83, %77, %71, %48, %39, %30
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %99, i32 0, i32 3
  %101 = call i32 @iwl_remove_notification(i32* %100, %struct.iwl_notification_wait* %6)
  br label %102

102:                                              ; preds = %98, %97
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @iwlmvm_mod_params, i32 0, i32 0), align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @iwl_trans_stop_device(i32 %108)
  br label %187

110:                                              ; preds = %102
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %186, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call %struct.TYPE_8__* @kzalloc(i32 12, i32 %116)
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %118, i32 0, i32 1
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %119, align 8
  %120 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %121 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = icmp ne %struct.TYPE_8__* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %189

127:                                              ; preds = %115
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %137 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  store i64 %140, i64* %147, align 8
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %156 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %163 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = getelementptr i8, i8* %167, i64 1
  %169 = bitcast i8* %168 to %struct.TYPE_6__*
  %170 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %171 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %170, i32 0, i32 1
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  store %struct.TYPE_6__* %169, %struct.TYPE_6__** %176, align 8
  %177 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %178 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i32 10, i32* %185, align 4
  br label %186

186:                                              ; preds = %127, %110
  br label %187

187:                                              ; preds = %186, %105
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %124, %15
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_send_bt_prio_tbl(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_nvm_init(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_nvm_check_version(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_send_tx_ant_cfg(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @iwl_set_default_calibrations(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_send_phy_cfg_cmd(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_trans_stop_device(i32) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
