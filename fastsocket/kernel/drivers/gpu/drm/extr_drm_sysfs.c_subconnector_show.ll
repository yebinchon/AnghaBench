; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_subconnector_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_sysfs.c_subconnector_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_connector = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Wrong connector type for this property\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to find subconnector property\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @subconnector_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subconnector_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_property*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.drm_connector* @to_drm_connector(%struct.device* %14)
  store %struct.drm_connector* %15, %struct.drm_connector** %8, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %9, align 8
  store %struct.drm_property* null, %struct.drm_property** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %32 [
    i32 130, label %22
    i32 131, label %27
    i32 129, label %27
    i32 132, label %27
    i32 128, label %27
  ]

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.drm_property*, %struct.drm_property** %25, align 8
  store %struct.drm_property* %26, %struct.drm_property** %10, align 8
  br label %34

27:                                               ; preds = %3, %3, %3, %3
  %28 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.drm_property*, %struct.drm_property** %30, align 8
  store %struct.drm_property* %31, %struct.drm_property** %10, align 8
  store i32 1, i32* %12, align 4
  br label %34

32:                                               ; preds = %3
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

34:                                               ; preds = %27, %22
  %35 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %36 = icmp ne %struct.drm_property* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

39:                                               ; preds = %34
  %40 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 1
  %42 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %43 = call i32 @drm_object_property_get_value(i32* %41, %struct.drm_property* %42, i64* %11)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %63

47:                                               ; preds = %39
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i8* @drm_get_tv_subconnector_name(i32 %54)
  br label %60

56:                                               ; preds = %47
  %57 = load i64, i64* %11, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i8* @drm_get_dvi_i_subconnector_name(i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i8* [ %55, %52 ], [ %59, %56 ]
  %62 = call i32 @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %46, %37, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.drm_connector* @to_drm_connector(%struct.device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_object_property_get_value(i32*, %struct.drm_property*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @drm_get_tv_subconnector_name(i32) #1

declare dso_local i8* @drm_get_dvi_i_subconnector_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
