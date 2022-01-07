; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_stbc_rx_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_stbc_rx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HT_CAP_RX_STBC_NO = common dso_local global i64 0, align 8
@HT_CAP_RX_STBC_ONE_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_stf_stbc_rx_set(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HT_CAP_RX_STBC_NO, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @HT_CAP_RX_STBC_ONE_STREAM, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %35

14:                                               ; preds = %9, %2
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %16 = call i64 @BRCMS_STF_SS_STBC_RX(%struct.brcms_c_info* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @HT_CAP_RX_STBC_NO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %35

30:                                               ; preds = %22, %18
  br label %31

31:                                               ; preds = %30, %14
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @brcms_c_stf_stbc_rx_ht_update(%struct.brcms_c_info* %32, i64 %33)
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @BRCMS_STF_SS_STBC_RX(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_stf_stbc_rx_ht_update(%struct.brcms_c_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
