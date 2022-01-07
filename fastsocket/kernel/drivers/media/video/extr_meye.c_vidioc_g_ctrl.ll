; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@meye = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
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
  switch i32 %11, label %52 [
    i32 136, label %12
    i32 133, label %17
    i32 135, label %22
    i32 129, label %27
    i32 137, label %32
    i32 128, label %36
    i32 131, label %36
    i32 130, label %40
    i32 132, label %44
    i32 134, label %48
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 0), align 4
  %14 = ashr i32 %13, 10
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 1), align 4
  %19 = ashr i32 %18, 10
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 2), align 4
  %24 = ashr i32 %23, 10
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2, i32 3), align 4
  %29 = ashr i32 %28, 10
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %56

32:                                               ; preds = %3
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 0), align 4
  %34 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %56

36:                                               ; preds = %3, %3
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 1), align 4
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %56

40:                                               ; preds = %3
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 2), align 4
  %42 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %56

44:                                               ; preds = %3
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 3), align 4
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %56

48:                                               ; preds = %3
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1, i32 4), align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %3
  %53 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %48, %44, %40, %36, %32, %27, %22, %17, %12
  %57 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
