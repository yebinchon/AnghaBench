; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_setxband.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_setxband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i64, %struct.TYPE_2__*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"wl%d: bandunit %d\0A\00", align 1
@SICF_GMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i64)* @brcms_c_setxband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_setxband(%struct.brcms_hardware* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @brcms_dbg_mac80211(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %23 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %35 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %2
  %39 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SICF_GMODE, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %50 = load i32, i32* @SICF_GMODE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @brcms_b_core_ioctl(%struct.brcms_hardware* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %38, %2
  ret void
}

declare dso_local i32 @brcms_dbg_mac80211(i32, i8*, i32, i64) #1

declare dso_local i32 @brcms_b_core_ioctl(%struct.brcms_hardware*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
