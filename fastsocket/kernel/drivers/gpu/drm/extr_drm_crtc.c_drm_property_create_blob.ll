; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_property_create_blob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_property_create_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { i32, i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_property_blob* (%struct.drm_device*, i32, i8*)* @drm_property_create_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_property_blob*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %4, align 8
  br label %54

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 16, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.drm_property_blob* @kzalloc(i32 %20, i32 %21)
  store %struct.drm_property_blob* %22, %struct.drm_property_blob** %8, align 8
  %23 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %24 = icmp ne %struct.drm_property_blob* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %4, align 8
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %29 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %28, i32 0, i32 3
  %30 = load i32, i32* @DRM_MODE_OBJECT_BLOB, align 4
  %31 = call i32 @drm_mode_object_get(%struct.drm_device* %27, i32* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %36 = call i32 @kfree(%struct.drm_property_blob* %35)
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %4, align 8
  br label %54

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %40 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %42 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @memcpy(i32 %43, i8* %44, i32 %45)
  %47 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %48 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %47, i32 0, i32 1
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @list_add_tail(i32* %48, i32* %51)
  %53 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  store %struct.drm_property_blob* %53, %struct.drm_property_blob** %4, align 8
  br label %54

54:                                               ; preds = %37, %34, %25, %15
  %55 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  ret %struct.drm_property_blob* %55
}

declare dso_local %struct.drm_property_blob* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.drm_property_blob*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
