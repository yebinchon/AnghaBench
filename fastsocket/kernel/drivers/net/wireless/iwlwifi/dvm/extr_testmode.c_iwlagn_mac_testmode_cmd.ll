; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwlagn_mac_testmode_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwlagn_mac_testmode_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.iwl_priv = type { i32, i32 }
%struct.nlattr = type { i32 }

@IWL_TM_ATTR_MAX = common dso_local global i32 0, align 4
@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"testmode cmd to driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"testmode change uCode ownership\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown testmode command\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Test cmd failed result=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_mac_testmode_cmd(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iwl_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @IWL_TM_ATTR_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %17)
  store %struct.iwl_priv* %18, %struct.iwl_priv** %10, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 1
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @iwl_test_parse(i32* %20, %struct.nlattr** %16, i8* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %67

28:                                               ; preds = %3
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  switch i32 %35, label %50 [
    i32 128, label %36
    i32 145, label %36
    i32 144, label %36
    i32 143, label %36
    i32 147, label %36
    i32 142, label %36
    i32 135, label %36
    i32 130, label %36
    i32 136, label %36
    i32 139, label %36
    i32 134, label %36
    i32 140, label %40
    i32 133, label %40
    i32 146, label %40
    i32 132, label %40
    i32 138, label %40
    i32 141, label %40
    i32 131, label %40
    i32 137, label %40
    i32 129, label %45
  ]

36:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 1
  %39 = call i32 @iwl_test_handle_cmd(i32* %38, %struct.nlattr** %16)
  store i32 %39, i32* %11, align 4
  br label %55

40:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %42 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %44 = call i32 @iwl_testmode_driver(%struct.ieee80211_hw* %43, %struct.nlattr** %16)
  store i32 %44, i32* %11, align 4
  br label %55

45:                                               ; preds = %28
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %47 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %49 = call i32 @iwl_testmode_ownership(%struct.ieee80211_hw* %48, %struct.nlattr** %16)
  store i32 %49, i32* %11, align 4
  br label %55

50:                                               ; preds = %28
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %52 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENOSYS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %45, %40, %36
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %65, %26
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #2

declare dso_local i32 @iwl_test_parse(i32*, %struct.nlattr**, i8*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @iwl_test_handle_cmd(i32*, %struct.nlattr**) #2

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #2

declare dso_local i32 @iwl_testmode_driver(%struct.ieee80211_hw*, %struct.nlattr**) #2

declare dso_local i32 @iwl_testmode_ownership(%struct.ieee80211_hw*, %struct.nlattr**) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
