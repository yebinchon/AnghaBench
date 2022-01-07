; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_phy_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i64* }
%struct.ar9170_rx_phystatus = type { i32*, i64 }
%struct.ieee80211_rx_status = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.ar9170_rx_phystatus*, %struct.ieee80211_rx_status*)* @carl9170_rx_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_rx_phy_status(%struct.ar9170* %0, %struct.ar9170_rx_phystatus* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.ar9170_rx_phystatus*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.ar9170_rx_phystatus* %1, %struct.ar9170_rx_phystatus** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %8 = call i32 @BUILD_BUG_ON(i32 1)
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %5, align 8
  %14 = getelementptr inbounds %struct.ar9170_rx_phystatus, %struct.ar9170_rx_phystatus* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 128
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %21, %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %9

32:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 7
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %5, align 8
  %38 = getelementptr inbounds %struct.ar9170_rx_phystatus, %struct.ar9170_rx_phystatus* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %5, align 8
  %48 = getelementptr inbounds %struct.ar9170_rx_phystatus, %struct.ar9170_rx_phystatus* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 127
  %55 = add nsw i32 %54, 1
  %56 = and i32 %55, 127
  %57 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %5, align 8
  %58 = getelementptr inbounds %struct.ar9170_rx_phystatus, %struct.ar9170_rx_phystatus* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %46, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %33

67:                                               ; preds = %33
  %68 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %69 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ar9170_rx_phystatus*, %struct.ar9170_rx_phystatus** %5, align 8
  %74 = getelementptr inbounds %struct.ar9170_rx_phystatus, %struct.ar9170_rx_phystatus* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
