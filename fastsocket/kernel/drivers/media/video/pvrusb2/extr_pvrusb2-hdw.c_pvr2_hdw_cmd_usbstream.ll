; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cmd_usbstream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cmd_usbstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PVR2_PATHWAY_ANALOG = common dso_local global i64 0, align 8
@FX2CMD_STREAMING_ON = common dso_local global i32 0, align 4
@FX2CMD_STREAMING_OFF = common dso_local global i32 0, align 4
@PVR2_PATHWAY_DIGITAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FX2CMD_HCW_DTV_STREAMING_ON = common dso_local global i32 0, align 4
@FX2CMD_HCW_DTV_STREAMING_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32)* @pvr2_hdw_cmd_usbstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_hdw_cmd_usbstream(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %8 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PVR2_PATHWAY_ANALOG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @FX2CMD_STREAMING_ON, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @FX2CMD_STREAMING_OFF, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %13, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PVR2_PATHWAY_DIGITAL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %23
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %68 [
    i32 129, label %38
    i32 128, label %49
  ]

38:                                               ; preds = %32
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @FX2CMD_HCW_DTV_STREAMING_ON, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @FX2CMD_HCW_DTV_STREAMING_OFF, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = call i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %39, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %71

49:                                               ; preds = %32
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @FX2CMD_STREAMING_ON, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @FX2CMD_STREAMING_OFF, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %50, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %71

64:                                               ; preds = %57
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @pvr2_hdw_cmd_onair_digital_path_ctrl(%struct.pvr2_hdw* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %32
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %64, %62, %46, %29, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_cmd_onair_digital_path_ctrl(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
