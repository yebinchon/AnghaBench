; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwlagn_mac_testmode_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwlagn_mac_testmode_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.iwl_priv = type { i32, i32 }
%struct.nlattr = type { i32 }

@IWL_TM_ATTR_MAX = common dso_local global i32 0, align 4
@IWL_TM_ATTR_COMMAND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_mac_testmode_dump(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %19 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %18)
  store %struct.iwl_priv* %19, %struct.iwl_priv** %12, align 8
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %14, align 8
  br label %62

33:                                               ; preds = %5
  %34 = load i32, i32* @IWL_TM_ATTR_MAX, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %15, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @iwl_test_parse(i32* %39, %struct.nlattr** %37, i8* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %58

47:                                               ; preds = %33
  %48 = load i64, i64* @IWL_TM_ATTR_COMMAND, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i64 @nla_get_u32(%struct.nlattr* %50)
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %55 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  store i64 %53, i64* %57, align 8
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %47, %45
  %59 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i32, i32* %17, align 4
  switch i32 %60, label %78 [
    i32 0, label %61
    i32 1, label %76
  ]

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %71 = call i32 @iwl_test_dump(i32* %67, i64 %68, %struct.sk_buff* %69, %struct.netlink_callback* %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %62, %58
  %77 = load i32, i32* %6, align 4
  ret i32 %77

78:                                               ; preds = %58
  unreachable
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @iwl_test_parse(i32*, %struct.nlattr**, i8*, i32) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_test_dump(i32*, i64, %struct.sk_buff*, %struct.netlink_callback*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
