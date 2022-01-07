; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_audio_modes_present_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_audio_modes_present_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32*)* @ctrl_audio_modes_present_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_audio_modes_present_get(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca %struct.pvr2_ctrl*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %8, i32 0, i32 0
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  store %struct.pvr2_hdw* %10, %struct.pvr2_hdw** %7, align 8
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %12 = call i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw* %11)
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %4, align 8
  store i32 %57, i32* %58, align 4
  ret i32 0
}

declare dso_local i32 @pvr2_hdw_status_poll(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
