; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_create_dvi_i_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_create_dvi_i_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"select subconnector\00", align 1
@drm_dvi_i_select_enum_list = common dso_local global i32 0, align 4
@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"subconnector\00", align 1
@drm_dvi_i_subconnector_enum_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_create_dvi_i_properties(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_property*, align 8
  %5 = alloca %struct.drm_property*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %10 = icmp ne %struct.drm_property* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = load i32, i32* @drm_dvi_i_select_enum_list, align 4
  %15 = load i32, i32* @drm_dvi_i_select_enum_list, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %13, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  store %struct.drm_property* %17, %struct.drm_property** %4, align 8
  %18 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.drm_property* %18, %struct.drm_property** %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %24 = load i32, i32* @drm_dvi_i_subconnector_enum_list, align 4
  %25 = load i32, i32* @drm_dvi_i_subconnector_enum_list, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %22, i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %26)
  store %struct.drm_property* %27, %struct.drm_property** %5, align 8
  %28 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.drm_property* %28, %struct.drm_property** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
