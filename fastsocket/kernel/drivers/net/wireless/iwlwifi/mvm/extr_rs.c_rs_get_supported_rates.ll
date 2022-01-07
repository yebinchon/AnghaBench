; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_get_supported_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_get_supported_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_lq_sta*, %struct.ieee80211_hdr*, i32)* @rs_get_supported_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %0, %struct.ieee80211_hdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_lq_sta*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %5, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @is_legacy(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @is_siso(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @is_mimo2(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %27, %19, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i64 @is_siso(i32) #1

declare dso_local i64 @is_mimo2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
