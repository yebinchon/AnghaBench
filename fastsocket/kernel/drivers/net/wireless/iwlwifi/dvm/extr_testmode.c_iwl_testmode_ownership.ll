; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwl_testmode_ownership.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwl_testmode_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.nlattr = type { i32 }
%struct.iwl_priv = type { i32, i64 }

@IWL_TM_ATTR_UCODE_OWNER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Missing ucode owner\0A\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@IWL_OWNERSHIP_DRIVER = common dso_local global i64 0, align 8
@IWL_OWNERSHIP_TM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid owner\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.nlattr**)* @iwl_testmode_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_testmode_ownership(%struct.ieee80211_hw* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_priv* %9, %struct.iwl_priv** %6, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @IWL_TM_ATTR_UCODE_OWNER, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %17 = call i32 @IWL_ERR(%struct.iwl_priv* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMSG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @IWL_TM_ATTR_UCODE_OWNER, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i64 @nla_get_u8(%struct.nlattr* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @IWL_OWNERSHIP_DRIVER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 0
  %35 = call i32 @iwl_test_enable_notifications(i32* %34, i32 0)
  br label %53

36:                                               ; preds = %20
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @IWL_OWNERSHIP_TM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 0
  %46 = call i32 @iwl_test_enable_notifications(i32* %45, i32 1)
  br label %52

47:                                               ; preds = %36
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %49 = call i32 @IWL_ERR(%struct.iwl_priv* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %29
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @iwl_test_enable_notifications(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
