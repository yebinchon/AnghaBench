; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.soc_camera_device = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.soc_camera_link = type { i32, i32, i32 (%struct.soc_camera_link*)*, i64 }
%struct.device_driver = type { i32 }
%struct.TYPE_2__ = type { %struct.device_driver* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @soc_camera_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_link*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.device_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.soc_camera_device* @to_soc_camera_dev(%struct.device* %7)
  store %struct.soc_camera_device* %8, %struct.soc_camera_device** %3, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %10 = call %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device* %9)
  store %struct.soc_camera_link* %10, %struct.soc_camera_link** %4, align 8
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 0
  %13 = load %struct.video_device*, %struct.video_device** %12, align 8
  store %struct.video_device* %13, %struct.video_device** %5, align 8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.video_device*, %struct.video_device** %5, align 8
  %22 = icmp ne %struct.video_device* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.video_device*, %struct.video_device** %5, align 8
  %25 = call i32 @video_unregister_device(%struct.video_device* %24)
  %26 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %27 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %26, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.soc_camera_link*, %struct.soc_camera_link** %4, align 8
  %30 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %35 = call i32 @soc_camera_free_i2c(%struct.soc_camera_device* %34)
  br label %61

36:                                               ; preds = %28
  %37 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %38 = call %struct.TYPE_2__* @to_soc_camera_control(%struct.soc_camera_device* %37)
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %42 = call %struct.TYPE_2__* @to_soc_camera_control(%struct.soc_camera_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.device_driver*, %struct.device_driver** %43, align 8
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi %struct.device_driver* [ %44, %40 ], [ null, %45 ]
  store %struct.device_driver* %47, %struct.device_driver** %6, align 8
  %48 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %49 = icmp ne %struct.device_driver* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.soc_camera_link*, %struct.soc_camera_link** %4, align 8
  %52 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %51, i32 0, i32 2
  %53 = load i32 (%struct.soc_camera_link*)*, i32 (%struct.soc_camera_link*)** %52, align 8
  %54 = load %struct.soc_camera_link*, %struct.soc_camera_link** %4, align 8
  %55 = call i32 %53(%struct.soc_camera_link* %54)
  %56 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %57 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @module_put(i32 %58)
  br label %60

60:                                               ; preds = %50, %46
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %63 = call i32 @soc_camera_free_user_formats(%struct.soc_camera_device* %62)
  %64 = load %struct.soc_camera_link*, %struct.soc_camera_link** %4, align 8
  %65 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.soc_camera_link*, %struct.soc_camera_link** %4, align 8
  %68 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @regulator_bulk_free(i32 %66, i32 %69)
  ret i32 0
}

declare dso_local %struct.soc_camera_device* @to_soc_camera_dev(%struct.device*) #1

declare dso_local %struct.soc_camera_link* @to_soc_camera_link(%struct.soc_camera_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @soc_camera_free_i2c(%struct.soc_camera_device*) #1

declare dso_local %struct.TYPE_2__* @to_soc_camera_control(%struct.soc_camera_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @soc_camera_free_user_formats(%struct.soc_camera_device*) #1

declare dso_local i32 @regulator_bulk_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
