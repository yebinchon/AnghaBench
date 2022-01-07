; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_mcs_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_mcs_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_rateset = type { i64* }

@MCSSET_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_rateset_mcs_clear(%struct.brcms_c_rateset* %0) #0 {
  %2 = alloca %struct.brcms_c_rateset*, align 8
  %3 = alloca i64, align 8
  store %struct.brcms_c_rateset* %0, %struct.brcms_c_rateset** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MCSSET_LEN, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %3, align 8
  br label %4

17:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
