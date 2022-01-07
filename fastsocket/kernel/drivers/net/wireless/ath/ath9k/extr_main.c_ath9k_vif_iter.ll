; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_vif_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_vif_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ath9k_vif_iter_data = type { i32, i32*, i32*, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @ath9k_vif_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_vif_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath9k_vif_iter_data*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ath9k_vif_iter_data*
  store %struct.ath9k_vif_iter_data* %10, %struct.ath9k_vif_iter_data** %7, align 8
  %11 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %12 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %43, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %22 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %27, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %36 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %34
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %16

46:                                               ; preds = %16
  br label %56

47:                                               ; preds = %3
  %48 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %49 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  %54 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %55 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %47, %46
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %85 [
    i32 131, label %60
    i32 129, label %65
    i32 132, label %70
    i32 130, label %75
    i32 128, label %80
  ]

60:                                               ; preds = %56
  %61 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %62 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %86

65:                                               ; preds = %56
  %66 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %67 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %86

70:                                               ; preds = %56
  %71 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %72 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %86

75:                                               ; preds = %56
  %76 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %77 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %86

80:                                               ; preds = %56
  %81 = load %struct.ath9k_vif_iter_data*, %struct.ath9k_vif_iter_data** %7, align 8
  %82 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %86

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85, %80, %75, %70, %65, %60
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
