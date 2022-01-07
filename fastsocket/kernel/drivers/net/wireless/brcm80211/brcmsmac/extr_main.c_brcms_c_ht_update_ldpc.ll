; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_ht_update_ldpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_ht_update_ldpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i64)* @brcms_c_ht_update_ldpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_ht_update_ldpc(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %5, i64* %9, align 8
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %18 = call i32 @brcms_c_update_beacon(%struct.brcms_c_info* %17)
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %20 = call i32 @brcms_c_update_probe_resp(%struct.brcms_c_info* %19, i32 1)
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = call i32 @wlc_phy_ldpc_override_set(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @brcms_c_update_beacon(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_update_probe_resp(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @wlc_phy_ldpc_override_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
