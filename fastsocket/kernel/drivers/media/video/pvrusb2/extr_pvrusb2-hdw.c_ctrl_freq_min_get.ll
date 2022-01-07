; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_freq_min_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_freq_min_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@TV_MIN_FREQ = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32*)* @ctrl_freq_min_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_freq_min_get(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %8, i32 0, i32 0
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  store %struct.pvr2_hdw* %10, %struct.pvr2_hdw** %7, align 8
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %17 = call i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @TV_MIN_FREQ, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %47

28:                                               ; preds = %18
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = mul i64 %37, 125
  %39 = udiv i64 %38, 2
  store i64 %39, i64* %6, align 8
  br label %43

40:                                               ; preds = %28
  %41 = load i64, i64* %6, align 8
  %42 = mul i64 %41, 62500
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %25
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
