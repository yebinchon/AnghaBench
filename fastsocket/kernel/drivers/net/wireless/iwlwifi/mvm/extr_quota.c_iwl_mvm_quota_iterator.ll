; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_quota.c_iwl_mvm_quota_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_quota.c_iwl_mvm_quota_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_mvm_quota_iterator_data = type { i64*, i32*, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@NUM_PHY_CTX = common dso_local global i64 0, align 8
@MAX_BINDINGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_quota_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_quota_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_quota_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iwl_mvm_quota_iterator_data*
  store %struct.iwl_mvm_quota_iterator_data* %11, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, align 8
  %18 = icmp eq %struct.ieee80211_vif* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %143

20:                                               ; preds = %3
  %21 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %143

26:                                               ; preds = %20
  %27 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* @NUM_PHY_CTX, align 8
  %33 = load i64, i64* @MAX_BINDINGS, align 8
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MAX_BINDINGS, align 8
  %39 = icmp sge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %143

44:                                               ; preds = %26
  %45 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %57, i64* %62, align 8
  br label %78

63:                                               ; preds = %44
  %64 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %69, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON_ONCE(i32 %76)
  br label %78

78:                                               ; preds = %63, %52
  %79 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %141 [
    i32 128, label %82
    i32 131, label %97
    i32 130, label %111
    i32 129, label %125
    i32 132, label %126
  ]

82:                                               ; preds = %78
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %82
  br label %143

97:                                               ; preds = %78
  %98 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %97
  br label %143

111:                                              ; preds = %78
  %112 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %116, %111
  br label %143

125:                                              ; preds = %78
  br label %143

126:                                              ; preds = %78
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load %struct.iwl_mvm_quota_iterator_data*, %struct.iwl_mvm_quota_iterator_data** %7, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, %struct.iwl_mvm_quota_iterator_data* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %132, %126
  br label %143

141:                                              ; preds = %78
  %142 = call i64 @WARN_ON_ONCE(i32 1)
  br label %143

143:                                              ; preds = %19, %25, %43, %141, %140, %125, %124, %110, %96
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
