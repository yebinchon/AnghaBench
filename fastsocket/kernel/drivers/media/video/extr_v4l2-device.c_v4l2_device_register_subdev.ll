; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-device.c_v4l2_device_register_subdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-device.c_v4l2_device_register_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_device = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32, %struct.v4l2_device*, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_device* %0, %struct.v4l2_device** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %8 = icmp eq %struct.v4l2_device* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = icmp eq %struct.v4l2_subdev* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %9, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %12
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %23, i32 0, i32 1
  %25 = load %struct.v4l2_device*, %struct.v4l2_device** %24, align 8
  %26 = icmp ne %struct.v4l2_device* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @try_module_get(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %22
  %38 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @v4l2_ctrl_add_handler(i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %37
  %50 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %51, i32 0, i32 1
  store %struct.v4l2_device* %50, %struct.v4l2_device** %52, align 8
  %53 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %56, i32 0, i32 0
  %58 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %49, %47, %34, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @v4l2_ctrl_add_handler(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
