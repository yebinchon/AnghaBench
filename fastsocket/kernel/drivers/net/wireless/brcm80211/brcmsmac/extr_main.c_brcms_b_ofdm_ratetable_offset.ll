; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_ofdm_ratetable_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_ofdm_ratetable_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32 }
%struct.plcp_signal_rate_lookup = type { i64, i64 }
%struct.plcp_signal_rate_lookup.0 = type opaque

@BRCM_RATE_6M = common dso_local global i32 0, align 4
@BRCM_RATE_9M = common dso_local global i32 0, align 4
@BRCM_RATE_12M = common dso_local global i32 0, align 4
@BRCM_RATE_18M = common dso_local global i32 0, align 4
@BRCM_RATE_24M = common dso_local global i32 0, align 4
@BRCM_RATE_36M = common dso_local global i32 0, align 4
@BRCM_RATE_48M = common dso_local global i32 0, align 4
@BRCM_RATE_54M = common dso_local global i32 0, align 4
@M_RT_DIRMAP_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*, i64)* @brcms_b_ofdm_ratetable_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_ofdm_ratetable_offset(%struct.brcms_hardware* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8 x %struct.plcp_signal_rate_lookup], align 16
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %8 = getelementptr inbounds [8 x %struct.plcp_signal_rate_lookup], [8 x %struct.plcp_signal_rate_lookup]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %8, i32 0, i32 0
  %10 = load i32, i32* @BRCM_RATE_6M, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %9, align 16
  %12 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %8, i32 0, i32 1
  store i64 11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %8, i64 1
  %14 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %13, i32 0, i32 0
  %15 = load i32, i32* @BRCM_RATE_9M, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %14, align 16
  %17 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %13, i32 0, i32 1
  store i64 15, i64* %17, align 8
  %18 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %13, i64 1
  %19 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %18, i32 0, i32 0
  %20 = load i32, i32* @BRCM_RATE_12M, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %19, align 16
  %22 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %18, i32 0, i32 1
  store i64 10, i64* %22, align 8
  %23 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %18, i64 1
  %24 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %23, i32 0, i32 0
  %25 = load i32, i32* @BRCM_RATE_18M, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %24, align 16
  %27 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %23, i32 0, i32 1
  store i64 14, i64* %27, align 8
  %28 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %23, i64 1
  %29 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %28, i32 0, i32 0
  %30 = load i32, i32* @BRCM_RATE_24M, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %29, align 16
  %32 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %28, i32 0, i32 1
  store i64 9, i64* %32, align 8
  %33 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %28, i64 1
  %34 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %33, i32 0, i32 0
  %35 = load i32, i32* @BRCM_RATE_36M, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %34, align 16
  %37 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %33, i32 0, i32 1
  store i64 13, i64* %37, align 8
  %38 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %33, i64 1
  %39 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %38, i32 0, i32 0
  %40 = load i32, i32* @BRCM_RATE_48M, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %39, align 16
  %42 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %38, i32 0, i32 1
  store i64 8, i64* %42, align 8
  %43 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %38, i64 1
  %44 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %43, i32 0, i32 0
  %45 = load i32, i32* @BRCM_RATE_54M, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %44, align 16
  %47 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %43, i32 0, i32 1
  store i64 12, i64* %47, align 8
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %67, %2
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds [8 x %struct.plcp_signal_rate_lookup], [8 x %struct.plcp_signal_rate_lookup]* %7, i64 0, i64 0
  %51 = bitcast %struct.plcp_signal_rate_lookup* %50 to %struct.plcp_signal_rate_lookup.0*
  %52 = call i64 @ARRAY_SIZE(%struct.plcp_signal_rate_lookup.0* %51)
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds [8 x %struct.plcp_signal_rate_lookup], [8 x %struct.plcp_signal_rate_lookup]* %7, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 16
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds [8 x %struct.plcp_signal_rate_lookup], [8 x %struct.plcp_signal_rate_lookup]* %7, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.plcp_signal_rate_lookup, %struct.plcp_signal_rate_lookup* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  br label %70

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %48

70:                                               ; preds = %61, %48
  %71 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %72 = load i64, i64* @M_RT_DIRMAP_A, align 8
  %73 = load i64, i64* %6, align 8
  %74 = mul nsw i64 %73, 2
  %75 = add nsw i64 %72, %74
  %76 = call i32 @brcms_b_read_shm(%struct.brcms_hardware* %71, i64 %75)
  %77 = mul nsw i32 2, %76
  ret i32 %77
}

declare dso_local i64 @ARRAY_SIZE(%struct.plcp_signal_rate_lookup.0*) #1

declare dso_local i32 @brcms_b_read_shm(%struct.brcms_hardware*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
