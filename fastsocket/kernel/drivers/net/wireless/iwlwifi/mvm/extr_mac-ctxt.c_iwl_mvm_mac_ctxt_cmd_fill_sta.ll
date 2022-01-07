; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_fill_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_fill_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.iwl_mac_data_sta = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"DTIM TBTT is 0x%llx/0x%x, offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_data_sta*, i32)* @iwl_mvm_mac_ctxt_cmd_fill_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_ctxt_cmd_fill_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mac_data_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mac_data_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.iwl_mac_data_sta* %2, %struct.iwl_mac_data_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %28, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 1024
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @cpu_to_le64(i64 %42)
  %44 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %56 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le64_to_cpu(i32 %58)
  %60 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %61 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @le32_to_cpu(i8* %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i32 %64)
  %66 = call i8* @cpu_to_le32(i32 1)
  %67 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  br label %73

69:                                               ; preds = %21, %15, %4
  %70 = call i8* @cpu_to_le32(i32 0)
  %71 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %72 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %24
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %75 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %80 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @iwl_mvm_reciprocal(i32 %84)
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %88 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %92, %96
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %100 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %104, %108
  %110 = call i32 @iwl_mvm_reciprocal(i32 %109)
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %113 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le32(i32 %119)
  %121 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %122 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %124 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.iwl_mac_data_sta*, %struct.iwl_mac_data_sta** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_mac_data_sta, %struct.iwl_mac_data_sta* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  ret void
}

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @iwl_mvm_reciprocal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
