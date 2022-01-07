; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32 (%struct.ieee80211_hw.0*)*, i32, i64, i32, i32, i32, i32* }
%struct.ieee80211_hw.0 = type opaque

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @p54_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  store %struct.p54_common* %7, %struct.p54_common** %3, align 8
  %8 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %9 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %12 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %11, i32 0, i32 0
  %13 = load i32 (%struct.ieee80211_hw.0*)*, i32 (%struct.ieee80211_hw.0*)** %12, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = bitcast %struct.ieee80211_hw* %14 to %struct.ieee80211_hw.0*
  %16 = call i32 %13(%struct.ieee80211_hw.0* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @P54_SET_QUEUE(i32 %25, i32 2, i32 3, i32 7, i32 47)
  %27 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %28 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @P54_SET_QUEUE(i32 %31, i32 2, i32 7, i32 15, i32 94)
  %33 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %34 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @P54_SET_QUEUE(i32 %37, i32 3, i32 15, i32 1023, i32 0)
  %39 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %40 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @P54_SET_QUEUE(i32 %43, i32 7, i32 15, i32 1023, i32 0)
  %45 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %46 = call i32 @p54_set_edcf(%struct.p54_common* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %20
  br label %76

50:                                               ; preds = %20
  %51 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %52 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memset(i32 %53, i32 -1, i32 %54)
  %56 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %57 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %58 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %60 = call i32 @p54_setup_mac(%struct.p54_common* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %65 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %66 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  br label %76

67:                                               ; preds = %50
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %70 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %69, i32 0, i32 3
  %71 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %68, i32* %70, i32 0)
  %72 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %73 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %75 = call i32 @p54_set_leds(%struct.p54_common* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %63, %49, %19
  %77 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %78 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @P54_SET_QUEUE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @p54_set_edcf(%struct.p54_common*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @p54_set_leds(%struct.p54_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
