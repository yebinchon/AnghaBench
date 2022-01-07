; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_get_survey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32, i32*, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.survey_info = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MAX_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @p54_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.p54_common*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.p54_common*, %struct.p54_common** %14, align 8
  store %struct.p54_common* %15, %struct.p54_common** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.p54_common*, %struct.p54_common** %8, align 8
  %18 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %86

24:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %80, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = load %struct.p54_common*, %struct.p54_common** %8, align 8
  %30 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %29, i32 0, i32 3
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  store %struct.ieee80211_channel* %31, %struct.ieee80211_channel** %9, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %33 = icmp ne %struct.ieee80211_channel* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.p54_common*, %struct.p54_common** %8, align 8
  %42 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %45 = call i32 @p54_wait_for_stats(%struct.ieee80211_hw* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.p54_common*, %struct.p54_common** %8, align 8
  %47 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %86

53:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %34, %28
  %55 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %56 = load %struct.p54_common*, %struct.p54_common** %8, align 8
  %57 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @memcpy(%struct.survey_info* %55, i32* %61, i32 16)
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %54
  %66 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %67 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %72 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %73 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %78

76:                                               ; preds = %65
  %77 = call i32 @msleep(i32 100)
  br label %80

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %54
  store i32 0, i32* %4, align 4
  br label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %25

83:                                               ; preds = %25
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %79, %51, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @p54_wait_for_stats(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.survey_info*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
