; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @ov7670_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_g_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %59 [
    i32 136, label %9
    i32 135, label %14
    i32 129, label %19
    i32 130, label %24
    i32 128, label %29
    i32 131, label %34
    i32 132, label %39
    i32 137, label %44
    i32 134, label %49
    i32 133, label %54
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 1
  %13 = call i32 @ov7670_g_brightness(%struct.v4l2_subdev* %10, i32* %12)
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 1
  %18 = call i32 @ov7670_g_contrast(%struct.v4l2_subdev* %15, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = call i32 @ov7670_g_sat(%struct.v4l2_subdev* %20, i32* %22)
  store i32 %23, i32* %3, align 4
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  %28 = call i32 @ov7670_g_hue(%struct.v4l2_subdev* %25, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %2
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  %33 = call i32 @ov7670_g_vflip(%struct.v4l2_subdev* %30, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %2
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  %38 = call i32 @ov7670_g_hflip(%struct.v4l2_subdev* %35, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %2
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = call i32 @ov7670_g_gain(%struct.v4l2_subdev* %40, i32* %42)
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %2
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %46, i32 0, i32 1
  %48 = call i32 @ov7670_g_autogain(%struct.v4l2_subdev* %45, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %2
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 1
  %53 = call i32 @ov7670_g_exp(%struct.v4l2_subdev* %50, i32* %52)
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %2
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  %58 = call i32 @ov7670_g_autoexp(%struct.v4l2_subdev* %55, i32* %57)
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ov7670_g_brightness(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_contrast(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_sat(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_hue(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_vflip(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_hflip(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_gain(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_autogain(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_exp(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov7670_g_autoexp(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
