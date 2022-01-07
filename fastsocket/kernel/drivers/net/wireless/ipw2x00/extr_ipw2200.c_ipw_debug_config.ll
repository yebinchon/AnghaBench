; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_debug_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_debug_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@ssid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Scan completed, no valid APs matched [CFG 0x%08X]\0A\00", align 1
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Channel locked to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Channel unlocked.\0A\00", align 1
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ESSID locked to '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ESSID unlocked.\0A\00", align 1
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"BSSID locked to %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"BSSID unlocked.\0A\00", align 1
@CAP_PRIVACY_ON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"PRIVACY on\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PRIVACY off\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"RATE MASK: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_debug_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_debug_config(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load i32, i32* @ssid, align 4
  %4 = call i32 @DECLARE_SSID_BUF(i32 %3)
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i32, i32* @ssid, align 4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @print_ssid(i32 %30, i32 %33, i32 %36)
  %38 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %41

39:                                               ; preds = %22
  %40 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %29
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %50 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  br label %55

53:                                               ; preds = %41
  %54 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %57 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %66

64:                                               ; preds = %55
  %65 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %62
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  ret void
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @print_ssid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
