; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_get_tkip_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_get_tkip_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.mac_iveiv_entry = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_get_tkip_seq(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rt2x00_dev*, align 8
  %10 = alloca %struct.mac_iveiv_entry, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @MAC_IVEIV_ENTRY(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @rt2800_register_multiread(%struct.rt2x00_dev* %17, i32 %18, %struct.mac_iveiv_entry* %10, i32 8)
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %10, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @memcpy(i32* %20, i32* %23, i32 4)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds %struct.mac_iveiv_entry, %struct.mac_iveiv_entry* %10, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = call i32 @memcpy(i32* %25, i32* %28, i32 4)
  ret void
}

declare dso_local i32 @MAC_IVEIV_ENTRY(i32) #1

declare dso_local i32 @rt2800_register_multiread(%struct.rt2x00_dev*, i32, %struct.mac_iveiv_entry*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
