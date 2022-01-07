; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_int_sta_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_int_sta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_int_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i8*, i8*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Internal station added.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Add internal station failed, status=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*, i32*, i32, i32)* @iwl_mvm_add_int_sta_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm* %0, %struct.iwl_mvm_int_sta* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_int_sta*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm_add_sta_cmd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.iwl_mvm_int_sta* %1, %struct.iwl_mvm_int_sta** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = call i32 @memset(%struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 32)
  %19 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @FW_CMD_ID_AND_COLOR(i32 %23, i32 %24)
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32 %37, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %5
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %43 = load i32, i32* @ADD_STA, align 4
  %44 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %42, i32 %43, i32 32, %struct.iwl_mvm_add_sta_cmd* %12, i32* %14)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  switch i32 %50, label %54 [
    i32 128, label %51
  ]

51:                                               ; preds = %49
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %53 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @IWL_ERR(%struct.iwl_mvm* %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %51, %47
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(%struct.iwl_mvm_add_sta_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_add_sta_cmd*, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
