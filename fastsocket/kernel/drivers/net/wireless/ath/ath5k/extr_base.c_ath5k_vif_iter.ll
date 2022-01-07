; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_vif_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_vif_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.ath5k_vif_iter_data = type { i32*, i32*, i32, i32, i32, i64, i32, i32 }
%struct.ath5k_vif = type { i64, i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_vif_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath5k_vif_iter_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath5k_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ath5k_vif_iter_data*
  store %struct.ath5k_vif_iter_data* %11, %struct.ath5k_vif_iter_data** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ath5k_vif*
  store %struct.ath5k_vif* %16, %struct.ath5k_vif** %9, align 8
  %17 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %18 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %53

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %28 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %33, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %42 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %40
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %22

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %55 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %60 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  %61 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %62 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcpy(i32 %63, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %53
  %68 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %69 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %74 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %79 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @ether_addr_equal(i32* %80, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %86 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %77
  br label %88

88:                                               ; preds = %87, %72, %67
  %89 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %90 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = load %struct.ath5k_vif*, %struct.ath5k_vif** %9, align 8
  %95 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %100 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %99, i32 0, i32 4
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.ath5k_vif*, %struct.ath5k_vif** %9, align 8
  %104 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %110 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %111 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  br label %136

112:                                              ; preds = %102
  %113 = load %struct.ath5k_vif*, %struct.ath5k_vif** %9, align 8
  %114 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %120 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %112
  %124 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %125 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.ath5k_vif*, %struct.ath5k_vif** %9, align 8
  %131 = getelementptr inbounds %struct.ath5k_vif, %struct.ath5k_vif* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ath5k_vif_iter_data*, %struct.ath5k_vif_iter_data** %7, align 8
  %134 = getelementptr inbounds %struct.ath5k_vif_iter_data, %struct.ath5k_vif_iter_data* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %123
  br label %136

136:                                              ; preds = %135, %108
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
