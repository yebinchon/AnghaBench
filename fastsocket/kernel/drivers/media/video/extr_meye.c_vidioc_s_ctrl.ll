; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@meye = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SONY_PIC_COMMAND_SETCAMERABRIGHTNESS = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAHUE = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERACONTRAST = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERACOLOR = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAAGC = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERASHARPNESS = common dso_local global i32 0, align 4
@SONY_PIC_COMMAND_SETCAMERAPICTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %8 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %87 [
    i32 136, label %12
    i32 133, label %22
    i32 135, label %32
    i32 129, label %42
    i32 137, label %52
    i32 128, label %61
    i32 131, label %61
    i32 130, label %70
    i32 132, label %79
    i32 134, label %83
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERABRIGHTNESS, align 4
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sony_pic_camera_command(i32 %13, i32 %16)
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 10
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 0), align 4
  br label %91

22:                                               ; preds = %3
  %23 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAHUE, align 4
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sony_pic_camera_command(i32 %23, i32 %26)
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 10
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 1), align 4
  br label %91

32:                                               ; preds = %3
  %33 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERACONTRAST, align 4
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sony_pic_camera_command(i32 %33, i32 %36)
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 10
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 2), align 4
  br label %91

42:                                               ; preds = %3
  %43 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERACOLOR, align 4
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sony_pic_camera_command(i32 %43, i32 %46)
  %48 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 10
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 3), align 4
  br label %91

52:                                               ; preds = %3
  %53 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAAGC, align 4
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sony_pic_camera_command(i32 %53, i32 %56)
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 0), align 4
  br label %91

61:                                               ; preds = %3, %3
  %62 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERASHARPNESS, align 4
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sony_pic_camera_command(i32 %62, i32 %65)
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 1), align 4
  br label %91

70:                                               ; preds = %3
  %71 = load i32, i32* @SONY_PIC_COMMAND_SETCAMERAPICTURE, align 4
  %72 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sony_pic_camera_command(i32 %71, i32 %74)
  %76 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 2), align 4
  br label %91

79:                                               ; preds = %3
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 3), align 4
  br label %91

83:                                               ; preds = %3
  %84 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 4), align 4
  br label %91

87:                                               ; preds = %3
  %88 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %93

91:                                               ; preds = %83, %79, %70, %61, %52, %42, %32, %22, %12
  %92 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sony_pic_camera_command(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
