; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_addr_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_addr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mac80211_hwsim_addr_match_data = type { i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@mac80211_hwsim_addr_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac80211_hwsim_data*, i32*)* @mac80211_hwsim_addr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_addr_match(%struct.mac80211_hwsim_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac80211_hwsim_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mac80211_hwsim_addr_match_data, align 8
  store %struct.mac80211_hwsim_data* %0, %struct.mac80211_hwsim_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %9 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i64 @memcmp(i32* %7, i32 %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mac80211_hwsim_addr_match_data, %struct.mac80211_hwsim_addr_match_data* %6, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds %struct.mac80211_hwsim_addr_match_data, %struct.mac80211_hwsim_addr_match_data* %6, i32 0, i32 1
  store i32* %21, i32** %22, align 8
  %23 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %24 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %27 = load i32, i32* @mac80211_hwsim_addr_iter, align 4
  %28 = call i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_4__* %25, i32 %26, i32 %27, %struct.mac80211_hwsim_addr_match_data* %6)
  %29 = getelementptr inbounds %struct.mac80211_hwsim_addr_match_data, %struct.mac80211_hwsim_addr_match_data* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %19, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_4__*, i32, i32, %struct.mac80211_hwsim_addr_match_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
