; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @ov7670_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %69 [
    i32 136, label %9
    i32 135, label %15
    i32 129, label %21
    i32 130, label %27
    i32 128, label %33
    i32 131, label %39
    i32 132, label %45
    i32 137, label %51
    i32 134, label %57
    i32 133, label %63
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ov7670_s_brightness(%struct.v4l2_subdev* %10, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ov7670_s_contrast(%struct.v4l2_subdev* %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ov7670_s_sat(%struct.v4l2_subdev* %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ov7670_s_hue(%struct.v4l2_subdev* %28, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %72

33:                                               ; preds = %2
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ov7670_s_vflip(%struct.v4l2_subdev* %34, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %2
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ov7670_s_hflip(%struct.v4l2_subdev* %40, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %72

45:                                               ; preds = %2
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %47 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ov7670_s_gain(%struct.v4l2_subdev* %46, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %2
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ov7670_s_autogain(%struct.v4l2_subdev* %52, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %72

57:                                               ; preds = %2
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ov7670_s_exp(%struct.v4l2_subdev* %58, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %72

63:                                               ; preds = %2
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ov7670_s_autoexp(%struct.v4l2_subdev* %64, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %72

69:                                               ; preds = %2
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ov7670_s_brightness(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_contrast(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_sat(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_hue(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_vflip(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_hflip(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_gain(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_autogain(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_exp(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_autoexp(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
