; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_fill_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_cmd_fill_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_mac_data_ap = type { i8*, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.iwl_mvm_vif = type { i32, i32 }

@DEVICE_SYSTEM_TIME_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mac_data_ap*, i32)* @iwl_mvm_mac_ctxt_cmd_fill_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_ctxt_cmd_fill_ap(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mac_data_ap* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mac_data_ap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.iwl_mac_data_ap* %2, %struct.iwl_mac_data_ap** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %9, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iwl_mvm_reciprocal(i32 %22)
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %30, %34
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  %48 = call i32 @iwl_mvm_reciprocal(i32 %47)
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DEVICE_SYSTEM_TIME_REG, align 4
  %65 = call i32 @iwl_read_prph(i32 %63, i32 %64)
  %66 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %4
  %69 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %74 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %76 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = load %struct.iwl_mac_data_ap*, %struct.iwl_mac_data_ap** %7, align 8
  %82 = getelementptr inbounds %struct.iwl_mac_data_ap, %struct.iwl_mac_data_ap* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_reciprocal(i32) #1

declare dso_local i32 @iwl_read_prph(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
