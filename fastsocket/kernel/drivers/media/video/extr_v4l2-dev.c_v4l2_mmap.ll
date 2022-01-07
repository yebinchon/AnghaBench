; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-dev.c_v4l2_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.vm_area_struct*)* }
%struct.video_device_shadow = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @v4l2_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.video_device_shadow*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %6, align 8
  %11 = load %struct.video_device*, %struct.video_device** %6, align 8
  %12 = call %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device* %11)
  store %struct.video_device_shadow* %12, %struct.video_device_shadow** %7, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %18, align 8
  %20 = icmp ne i32 (%struct.file*, %struct.vm_area_struct*)* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %25 = icmp ne %struct.video_device_shadow* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %28 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %33 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @mutex_lock_interruptible(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %31, %26, %23
  %41 = load %struct.video_device*, %struct.video_device** %6, align 8
  %42 = call i64 @video_is_registered(%struct.video_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.video_device*, %struct.video_device** %6, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %48, align 8
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = call i32 %49(%struct.file* %50, %struct.vm_area_struct* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %44, %40
  %54 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %55 = icmp ne %struct.video_device_shadow* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %58 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.video_device_shadow*, %struct.video_device_shadow** %7, align 8
  %63 = getelementptr inbounds %struct.video_device_shadow, %struct.video_device_shadow* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @mutex_unlock(i64 %64)
  br label %66

66:                                               ; preds = %61, %56, %53
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %37, %21
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.video_device_shadow* @video_device_shadow_get(%struct.video_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i64) #1

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @mutex_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
