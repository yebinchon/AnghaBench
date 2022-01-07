; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-device.c_v4l2_device_unregister_subdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-device.c_v4l2_device_unregister_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %3 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %4 = icmp eq %struct.v4l2_subdev* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %31

11:                                               ; preds = %5
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 2
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @module_put(i32 %29)
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
