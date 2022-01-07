; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_hardware* }
%struct.brcms_hardware = type { i64, i32*, i32, i32, %struct.brcms_hw_band**, %struct.brcms_hw_band* }
%struct.brcms_hw_band = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*)* @brcms_b_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_detach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcms_hw_band*, align 8
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 0
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %8, align 8
  store %struct.brcms_hardware* %9, %struct.brcms_hardware** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %11 = call i32 @brcms_b_detach_dmapio(%struct.brcms_hardware* %10)
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %12, i32 0, i32 5
  %14 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %13, align 8
  store %struct.brcms_hw_band* %14, %struct.brcms_hw_band** %4, align 8
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %41, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %18 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_hw_band, %struct.brcms_hw_band* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %4, align 8
  %28 = getelementptr inbounds %struct.brcms_hw_band, %struct.brcms_hw_band* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @wlc_phy_detach(i32* %29)
  %31 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %4, align 8
  %32 = getelementptr inbounds %struct.brcms_hw_band, %struct.brcms_hw_band* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %35 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %34, i32 0, i32 4
  %36 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %35, align 8
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %38 = call i64 @OTHERBANDUNIT(%struct.brcms_c_info* %37)
  %39 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %36, i64 %38
  %40 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %39, align 8
  store %struct.brcms_hw_band* %40, %struct.brcms_hw_band** %4, align 8
  br label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %46 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %50 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wlc_phy_shim_detach(i32 %51)
  %53 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %54 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %59 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ai_detach(i32* %60)
  %62 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %63 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %62, i32 0, i32 1
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %44
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @brcms_b_detach_dmapio(%struct.brcms_hardware*) #1

declare dso_local i32 @wlc_phy_detach(i32*) #1

declare dso_local i64 @OTHERBANDUNIT(%struct.brcms_c_info*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wlc_phy_shim_detach(i32) #1

declare dso_local i32 @ai_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
