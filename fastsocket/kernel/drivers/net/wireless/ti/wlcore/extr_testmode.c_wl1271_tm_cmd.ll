; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_testmode.c_wl1271_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32 }
%struct.nlattr = type { i32 }

@WL1271_TM_ATTR_MAX = common dso_local global i32 0, align 4
@wl1271_tm_policy = common dso_local global i32 0, align 4
@WL1271_TM_ATTR_CMD_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_tm_cmd(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl1271*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %8, align 8
  %16 = load i32, i32* @WL1271_TM_ATTR_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @WL1271_TM_ATTR_MAX, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @wl1271_tm_policy, align 4
  %25 = call i32 @nla_parse(%struct.nlattr** %20, i32 %21, i8* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

30:                                               ; preds = %3
  %31 = load i64, i64* @WL1271_TM_ATTR_CMD_ID, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

38:                                               ; preds = %30
  %39 = load i64, i64* @WL1271_TM_ATTR_CMD_ID, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nla_get_u32(%struct.nlattr* %41)
  switch i32 %42, label %58 [
    i32 128, label %43
    i32 130, label %46
    i32 132, label %49
    i32 129, label %52
    i32 131, label %55
  ]

43:                                               ; preds = %38
  %44 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %45 = call i32 @wl1271_tm_cmd_test(%struct.wl1271* %44, %struct.nlattr** %20)
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

46:                                               ; preds = %38
  %47 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %48 = call i32 @wl1271_tm_cmd_interrogate(%struct.wl1271* %47, %struct.nlattr** %20)
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

49:                                               ; preds = %38
  %50 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %51 = call i32 @wl1271_tm_cmd_configure(%struct.wl1271* %50, %struct.nlattr** %20)
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

52:                                               ; preds = %38
  %53 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %54 = call i32 @wl1271_tm_cmd_set_plt_mode(%struct.wl1271* %53, %struct.nlattr** %20)
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

55:                                               ; preds = %38
  %56 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %57 = call i32 @wl12xx_tm_cmd_get_mac(%struct.wl1271* %56, %struct.nlattr** %20)
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

58:                                               ; preds = %38
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %58, %55, %52, %49, %46, %43, %35, %28
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i8*, i32, i32) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @wl1271_tm_cmd_test(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl1271_tm_cmd_interrogate(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl1271_tm_cmd_configure(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl1271_tm_cmd_set_plt_mode(%struct.wl1271*, %struct.nlattr**) #2

declare dso_local i32 @wl12xx_tm_cmd_get_mac(%struct.wl1271*, %struct.nlattr**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
