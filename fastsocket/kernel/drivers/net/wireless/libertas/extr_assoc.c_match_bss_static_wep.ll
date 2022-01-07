; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_match_bss_static_wep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_match_bss_static_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_802_11_security = type { i32, i32, i64 }
%struct.bss_descriptor = type { i32 }

@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_802_11_security*, %struct.bss_descriptor*)* @match_bss_static_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_bss_static_wep(%struct.lbs_802_11_security* %0, %struct.bss_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_802_11_security*, align 8
  %5 = alloca %struct.bss_descriptor*, align 8
  store %struct.lbs_802_11_security* %0, %struct.lbs_802_11_security** %4, align 8
  store %struct.bss_descriptor* %1, %struct.bss_descriptor** %5, align 8
  %6 = load %struct.lbs_802_11_security*, %struct.lbs_802_11_security** %4, align 8
  %7 = getelementptr inbounds %struct.lbs_802_11_security, %struct.lbs_802_11_security* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.lbs_802_11_security*, %struct.lbs_802_11_security** %4, align 8
  %12 = getelementptr inbounds %struct.lbs_802_11_security, %struct.lbs_802_11_security* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load %struct.lbs_802_11_security*, %struct.lbs_802_11_security** %4, align 8
  %17 = getelementptr inbounds %struct.lbs_802_11_security, %struct.lbs_802_11_security* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = load %struct.bss_descriptor*, %struct.bss_descriptor** %5, align 8
  %22 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %20, %15, %10, %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
