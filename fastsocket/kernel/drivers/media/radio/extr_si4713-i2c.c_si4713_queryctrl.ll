; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_queryctrl = type { i32 }

@DEFAULT_MUTE = common dso_local global i32 0, align 4
@DEFAULT_RDS_PI = common dso_local global i32 0, align 4
@DEFAULT_RDS_PTY = common dso_local global i32 0, align 4
@MAX_RDS_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_RDS_DEVIATION = common dso_local global i32 0, align 4
@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@MAX_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@MAX_LIMITER_RELEASE_TIME = common dso_local global i32 0, align 4
@DEFAULT_LIMITER_RTIME = common dso_local global i32 0, align 4
@MAX_LIMITER_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_LIMITER_DEV = common dso_local global i32 0, align 4
@MAX_ACOMP_GAIN = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_GAIN = common dso_local global i32 0, align 4
@MIN_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@MAX_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_THRESHOLD = common dso_local global i32 0, align 4
@MAX_ACOMP_ATTACK_TIME = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_ATIME = common dso_local global i32 0, align 4
@MAX_ACOMP_RELEASE_TIME = common dso_local global i32 0, align 4
@DEFAULT_ACOMP_RTIME = common dso_local global i32 0, align 4
@MAX_PILOT_DEVIATION = common dso_local global i32 0, align 4
@DEFAULT_PILOT_DEVIATION = common dso_local global i32 0, align 4
@MAX_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@DEFAULT_PILOT_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_DISABLED = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_75_uS = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_50_uS = common dso_local global i32 0, align 4
@DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_queryctrl*)* @si4713_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_queryctrl(%struct.v4l2_subdev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_queryctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %97 [
    i32 139, label %9
    i32 134, label %13
    i32 132, label %17
    i32 135, label %21
    i32 133, label %26
    i32 131, label %30
    i32 141, label %34
    i32 140, label %37
    i32 142, label %42
    i32 146, label %47
    i32 145, label %50
    i32 143, label %55
    i32 147, label %61
    i32 144, label %66
    i32 137, label %71
    i32 138, label %74
    i32 136, label %79
    i32 128, label %84
    i32 129, label %90
    i32 130, label %94
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %11 = load i32, i32* @DEFAULT_MUTE, align 4
  %12 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %10, i32 0, i32 1, i32 1, i32 %11)
  store i32 %12, i32* %5, align 4
  br label %100

13:                                               ; preds = %2
  %14 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %15 = load i32, i32* @DEFAULT_RDS_PI, align 4
  %16 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %14, i32 0, i32 65535, i32 1, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %19 = load i32, i32* @DEFAULT_RDS_PTY, align 4
  %20 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %18, i32 0, i32 31, i32 1, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %23 = load i32, i32* @MAX_RDS_DEVIATION, align 4
  %24 = load i32, i32* @DEFAULT_RDS_DEVIATION, align 4
  %25 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %22, i32 0, i32 %23, i32 10, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %100

26:                                               ; preds = %2
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %28 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %29 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %27, i32 0, i32 %28, i32 8, i32 0)
  store i32 %29, i32* %5, align 4
  br label %100

30:                                               ; preds = %2
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %32 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %33 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %31, i32 0, i32 %32, i32 32, i32 0)
  store i32 %33, i32* %5, align 4
  br label %100

34:                                               ; preds = %2
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %36 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %35, i32 0, i32 1, i32 1, i32 1)
  store i32 %36, i32* %5, align 4
  br label %100

37:                                               ; preds = %2
  %38 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %39 = load i32, i32* @MAX_LIMITER_RELEASE_TIME, align 4
  %40 = load i32, i32* @DEFAULT_LIMITER_RTIME, align 4
  %41 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %38, i32 250, i32 %39, i32 50, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %100

42:                                               ; preds = %2
  %43 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %44 = load i32, i32* @MAX_LIMITER_DEVIATION, align 4
  %45 = load i32, i32* @DEFAULT_LIMITER_DEV, align 4
  %46 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %43, i32 0, i32 %44, i32 10, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %100

47:                                               ; preds = %2
  %48 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %49 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %48, i32 0, i32 1, i32 1, i32 1)
  store i32 %49, i32* %5, align 4
  br label %100

50:                                               ; preds = %2
  %51 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %52 = load i32, i32* @MAX_ACOMP_GAIN, align 4
  %53 = load i32, i32* @DEFAULT_ACOMP_GAIN, align 4
  %54 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %51, i32 0, i32 %52, i32 1, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %100

55:                                               ; preds = %2
  %56 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %57 = load i32, i32* @MIN_ACOMP_THRESHOLD, align 4
  %58 = load i32, i32* @MAX_ACOMP_THRESHOLD, align 4
  %59 = load i32, i32* @DEFAULT_ACOMP_THRESHOLD, align 4
  %60 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %56, i32 %57, i32 %58, i32 1, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %100

61:                                               ; preds = %2
  %62 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %63 = load i32, i32* @MAX_ACOMP_ATTACK_TIME, align 4
  %64 = load i32, i32* @DEFAULT_ACOMP_ATIME, align 4
  %65 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %62, i32 0, i32 %63, i32 500, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %100

66:                                               ; preds = %2
  %67 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %68 = load i32, i32* @MAX_ACOMP_RELEASE_TIME, align 4
  %69 = load i32, i32* @DEFAULT_ACOMP_RTIME, align 4
  %70 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %67, i32 100000, i32 %68, i32 100000, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %100

71:                                               ; preds = %2
  %72 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %73 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %72, i32 0, i32 1, i32 1, i32 1)
  store i32 %73, i32* %5, align 4
  br label %100

74:                                               ; preds = %2
  %75 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %76 = load i32, i32* @MAX_PILOT_DEVIATION, align 4
  %77 = load i32, i32* @DEFAULT_PILOT_DEVIATION, align 4
  %78 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %75, i32 0, i32 %76, i32 10, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %100

79:                                               ; preds = %2
  %80 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %81 = load i32, i32* @MAX_PILOT_FREQUENCY, align 4
  %82 = load i32, i32* @DEFAULT_PILOT_FREQUENCY, align 4
  %83 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %80, i32 0, i32 %81, i32 1, i32 %82)
  store i32 %83, i32* %5, align 4
  br label %100

84:                                               ; preds = %2
  %85 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %86 = load i32, i32* @V4L2_PREEMPHASIS_DISABLED, align 4
  %87 = load i32, i32* @V4L2_PREEMPHASIS_75_uS, align 4
  %88 = load i32, i32* @V4L2_PREEMPHASIS_50_uS, align 4
  %89 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %85, i32 %86, i32 %87, i32 1, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %100

90:                                               ; preds = %2
  %91 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %92 = load i32, i32* @DEFAULT_POWER_LEVEL, align 4
  %93 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %91, i32 0, i32 120, i32 1, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %100

94:                                               ; preds = %2
  %95 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %4, align 8
  %96 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %95, i32 0, i32 191, i32 1, i32 0)
  store i32 %96, i32* %5, align 4
  br label %100

97:                                               ; preds = %2
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %94, %90, %84, %79, %74, %71, %66, %61, %55, %50, %47, %42, %37, %34, %30, %26, %21, %17, %13, %9
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
