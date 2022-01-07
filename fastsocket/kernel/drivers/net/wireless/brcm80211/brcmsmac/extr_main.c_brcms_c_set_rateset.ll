; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_rateset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_set_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_bss_info*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.brcms_bss_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.brcms_bss_info*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.brcm_rateset = type { i64, i32 }
%struct.brcms_c_rateset = type { i64, i32*, i32 }

@BRCMS_NUMRATES = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@SUPPORT_11N = common dso_local global i32 0, align 4
@MCSSET_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_set_rateset(%struct.brcms_c_info* %0, %struct.brcm_rateset* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.brcm_rateset*, align 8
  %6 = alloca %struct.brcms_c_rateset, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcms_bss_info*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.brcm_rateset* %1, %struct.brcm_rateset** %5, align 8
  %9 = load %struct.brcm_rateset*, %struct.brcm_rateset** %5, align 8
  %10 = getelementptr inbounds %struct.brcm_rateset, %struct.brcm_rateset* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BRCMS_NUMRATES, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOBUFS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.brcms_c_rateset* %6, i32 0, i32 24)
  %19 = load %struct.brcm_rateset*, %struct.brcm_rateset** %5, align 8
  %20 = getelementptr inbounds %struct.brcm_rateset, %struct.brcm_rateset* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 2
  %24 = load %struct.brcm_rateset*, %struct.brcm_rateset** %5, align 8
  %25 = getelementptr inbounds %struct.brcm_rateset, %struct.brcm_rateset* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @memcpy(i32* %23, i32* %25, i64 %27)
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %30 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SUPPORT_11N, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %17
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %39 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %46 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.brcms_bss_info*, %struct.brcms_bss_info** %48, align 8
  store %struct.brcms_bss_info* %49, %struct.brcms_bss_info** %8, align 8
  br label %54

50:                                               ; preds = %37
  %51 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %52 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %51, i32 0, i32 0
  %53 = load %struct.brcms_bss_info*, %struct.brcms_bss_info** %52, align 8
  store %struct.brcms_bss_info* %53, %struct.brcms_bss_info** %8, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.brcms_bss_info*, %struct.brcms_bss_info** %8, align 8
  %58 = getelementptr inbounds %struct.brcms_bss_info, %struct.brcms_bss_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i64, i64* @MCSSET_LEN, align 8
  %63 = call i32 @memcpy(i32* %56, i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %54, %17
  %65 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %66 = call i32 @brcms_c_set_internal_rateset(%struct.brcms_c_info* %65, %struct.brcms_c_rateset* %6)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %71 = call i32 @brcms_c_ofdm_rateset_war(%struct.brcms_c_info* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.brcms_c_rateset*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @brcms_c_set_internal_rateset(%struct.brcms_c_info*, %struct.brcms_c_rateset*) #1

declare dso_local i32 @brcms_c_ofdm_rateset_war(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
