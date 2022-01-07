; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_get_supported_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_get_supported_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_lq_sta = type { i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_lq_sta*, %struct.ieee80211_hdr*, i32)* @il4965_rs_get_supported_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_get_supported_rates(%struct.il_lq_sta* %0, %struct.ieee80211_hdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_lq_sta*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.il_lq_sta* %0, %struct.il_lq_sta** %5, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @is_legacy(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %13 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @is_siso(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %21 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %25 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i64 @is_siso(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
