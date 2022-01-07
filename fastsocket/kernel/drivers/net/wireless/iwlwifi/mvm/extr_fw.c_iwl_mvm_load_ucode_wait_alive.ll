; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_ucode_wait_alive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_fw.c_iwl_mvm_load_ucode_wait_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32*, i64, i32*, i32, i32 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_mvm_alive_data = type { i32, i32 }
%struct.fw_img = type { i32 }

@iwl_mvm_load_ucode_wait_alive.alive_cmd = internal constant [1 x i32] [i32 128], align 4
@EINVAL = common dso_local global i32 0, align 4
@iwl_alive_fn = common dso_local global i32 0, align 4
@IWL_UCODE_INIT = common dso_local global i32 0, align 4
@MVM_UCODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Loaded ucode is not valid!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_MAX_HW_QUEUES = common dso_local global i32 0, align 4
@IWL_MVM_FIRST_AGG_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_CMD_QUEUE = common dso_local global i32 0, align 4
@IWL_INVALID_MAC80211_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_mvm_load_ucode_wait_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_load_ucode_wait_alive(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca %struct.iwl_mvm_alive_data, align 4
  %8 = alloca %struct.fw_img*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.fw_img* @iwl_get_ucode_image(%struct.iwl_mvm* %18, i32 %19)
  store %struct.fw_img* %20, %struct.fw_img** %8, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %24 = icmp ne %struct.fw_img* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %128

28:                                               ; preds = %2
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 6
  %31 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_mvm_load_ucode_wait_alive.alive_cmd, i64 0, i64 0))
  %32 = load i32, i32* @iwl_alive_fn, align 4
  %33 = call i32 @iwl_init_notification_wait(i32* %30, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_mvm_load_ucode_wait_alive.alive_cmd, i64 0, i64 0), i32 %31, i32 %32, %struct.iwl_mvm_alive_data* %7)
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IWL_UCODE_INIT, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @iwl_trans_start_fw(i32 %36, %struct.fw_img* %37, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %28
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 6
  %51 = call i32 @iwl_remove_notification(i32* %50, %struct.iwl_notification_wait* %6)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %128

53:                                               ; preds = %28
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 6
  %56 = load i32, i32* @MVM_UCODE_ALIVE_TIMEOUT, align 4
  %57 = call i32 @iwl_wait_notification(i32* %55, %struct.iwl_notification_wait* %6, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %128

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.iwl_mvm_alive_data, %struct.iwl_mvm_alive_data* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %71 = call i32 @IWL_ERR(%struct.iwl_mvm* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %128

77:                                               ; preds = %65
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_alive_data, %struct.iwl_mvm_alive_data* %7, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @iwl_trans_fw_alive(i32 %80, i32 %82)
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %120, %77
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @IWL_MAX_HW_QUEUES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @IWL_MVM_FIRST_AGG_QUEUE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @IWL_MVM_CMD_QUEUE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %112

104:                                              ; preds = %92, %88
  %105 = load i32, i32* @IWL_INVALID_MAC80211_QUEUE, align 4
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %96
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %114 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @atomic_set(i32* %118, i32 0)
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %84

123:                                              ; preds = %84
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %69, %60, %45, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.fw_img* @iwl_get_ucode_image(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_mvm_alive_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_trans_start_fw(i32, %struct.fw_img*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_trans_fw_alive(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
