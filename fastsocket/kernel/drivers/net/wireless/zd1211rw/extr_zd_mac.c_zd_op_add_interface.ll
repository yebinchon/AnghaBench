; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.zd_mac = type { i64, %struct.ieee80211_vif* }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @zd_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.zd_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %7)
  store %struct.zd_mac* %8, %struct.zd_mac** %6, align 8
  %9 = load %struct.zd_mac*, %struct.zd_mac** %6, align 8
  %10 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %28 [
    i32 129, label %21
    i32 130, label %21
    i32 128, label %21
    i32 132, label %21
    i32 131, label %21
  ]

21:                                               ; preds = %17, %17, %17, %17, %17
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.zd_mac*, %struct.zd_mac** %6, align 8
  %27 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %31

28:                                               ; preds = %17
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = load %struct.zd_mac*, %struct.zd_mac** %6, align 8
  %34 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %33, i32 0, i32 1
  store %struct.ieee80211_vif* %32, %struct.ieee80211_vif** %34, align 8
  %35 = load %struct.zd_mac*, %struct.zd_mac** %6, align 8
  %36 = call i32 @set_mac_and_bssid(%struct.zd_mac* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %28, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_mac_and_bssid(%struct.zd_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
