; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.lbtf_private* }
%struct.lbtf_private = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32, i64 }

@LBTF_DEB_MACOPS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LBTF_AP_MODE = common dso_local global i32 0, align 4
@LBTF_STA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @lbtf_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbtf_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.lbtf_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.lbtf_private*, %struct.lbtf_private** %8, align 8
  store %struct.lbtf_private* %9, %struct.lbtf_private** %6, align 8
  %10 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %11 = call i32 @lbtf_deb_enter(i32 %10)
  %12 = load %struct.lbtf_private*, %struct.lbtf_private** %6, align 8
  %13 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %15 = icmp ne %struct.ieee80211_vif* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = load %struct.lbtf_private*, %struct.lbtf_private** %6, align 8
  %22 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %21, i32 0, i32 0
  store %struct.ieee80211_vif* %20, %struct.ieee80211_vif** %22, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %34 [
    i32 129, label %26
    i32 130, label %26
    i32 128, label %30
  ]

26:                                               ; preds = %19, %19
  %27 = load %struct.lbtf_private*, %struct.lbtf_private** %6, align 8
  %28 = load i32, i32* @LBTF_AP_MODE, align 4
  %29 = call i32 @lbtf_set_mode(%struct.lbtf_private* %27, i32 %28)
  br label %39

30:                                               ; preds = %19
  %31 = load %struct.lbtf_private*, %struct.lbtf_private** %6, align 8
  %32 = load i32, i32* @LBTF_STA_MODE, align 4
  %33 = call i32 @lbtf_set_mode(%struct.lbtf_private* %31, i32 %32)
  br label %39

34:                                               ; preds = %19
  %35 = load %struct.lbtf_private*, %struct.lbtf_private** %6, align 8
  %36 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %35, i32 0, i32 0
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %36, align 8
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %30, %26
  %40 = load %struct.lbtf_private*, %struct.lbtf_private** %6, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @lbtf_set_mac_address(%struct.lbtf_private* %40, i32* %44)
  %46 = load i32, i32* @LBTF_DEB_MACOPS, align 4
  %47 = call i32 @lbtf_deb_leave(i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %39, %34, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_set_mode(%struct.lbtf_private*, i32) #1

declare dso_local i32 @lbtf_set_mac_address(%struct.lbtf_private*, i32*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
