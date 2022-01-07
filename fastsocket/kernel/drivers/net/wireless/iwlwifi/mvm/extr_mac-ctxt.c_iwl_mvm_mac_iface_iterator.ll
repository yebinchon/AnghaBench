; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64*, i64, i32 }
%struct.iwl_mvm_mac_iface_iterator_data = type { i32, i64, i32, %struct.ieee80211_vif*, i32, i32 }
%struct.iwl_mvm_vif = type { i64, i64 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@NUM_TSF_IDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_mac_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_mac_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iwl_mvm_mac_iface_iterator_data*
  store %struct.iwl_mvm_mac_iface_iterator_data* %11, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %16, align 8
  %18 = icmp eq %struct.ieee80211_vif* %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %159

22:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__set_bit(i64 %42, i32 %45)
  br label %47

47:                                               ; preds = %36, %27
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %9, align 8
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__set_bit(i64 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__clear_bit(i64 %68, i32 %71)
  %73 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %73, i32 0, i32 3
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %74, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %139 [
    i32 128, label %78
    i32 129, label %106
  ]

78:                                               ; preds = %65
  %79 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 129
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NUM_TSF_IDS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @test_bit(i64 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %89, %83
  br label %159

105:                                              ; preds = %78
  br label %140

106:                                              ; preds = %65
  %107 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 129
  br i1 %115, label %116, label %138

116:                                              ; preds = %111, %106
  %117 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NUM_TSF_IDS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @test_bit(i64 %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %136 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %122, %116
  br label %159

138:                                              ; preds = %111
  br label %140

139:                                              ; preds = %65
  br label %140

140:                                              ; preds = %139, %138, %105
  %141 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %145 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @__clear_bit(i64 %143, i32 %146)
  %148 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %152 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %140
  %156 = load i64, i64* @NUM_TSF_IDS, align 8
  %157 = load %struct.iwl_mvm_mac_iface_iterator_data*, %struct.iwl_mvm_mac_iface_iterator_data** %7, align 8
  %158 = getelementptr inbounds %struct.iwl_mvm_mac_iface_iterator_data, %struct.iwl_mvm_mac_iface_iterator_data* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %19, %104, %137, %155, %140
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
