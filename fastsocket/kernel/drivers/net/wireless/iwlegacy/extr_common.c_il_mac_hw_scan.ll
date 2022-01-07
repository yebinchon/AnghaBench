; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_hw_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_request = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can not scan on no channels.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@S_SCANNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Scan already in progress.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"leave ret %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_mac_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.il_priv*, %struct.il_priv** %11, align 8
  store %struct.il_priv* %12, %struct.il_priv** %8, align 8
  %13 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %14 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @IL_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @S_SCANNING, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 4
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = call i32 @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %54

35:                                               ; preds = %21
  %36 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %37 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 3
  store %struct.cfg80211_scan_request* %36, %struct.cfg80211_scan_request** %38, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 2
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %41, align 8
  %42 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %43 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = call i32 @il_scan_initiate(%struct.il_priv* %51, %struct.ieee80211_vif* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %35, %31
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %54, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @D_SCAN(i8*) #1

declare dso_local i32 @il_scan_initiate(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
