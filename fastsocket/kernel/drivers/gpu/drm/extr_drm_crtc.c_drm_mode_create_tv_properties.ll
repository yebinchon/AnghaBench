; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_create_tv_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_create_tv_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"select subconnector\00", align 1
@drm_tv_select_enum_list = common dso_local global i32 0, align 4
@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"subconnector\00", align 1
@drm_tv_subconnector_enum_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"left margin\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"right margin\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"top margin\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bottom margin\00", align 1
@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"flicker reduction\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"hue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca %struct.drm_property*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 12
  %14 = load %struct.drm_property*, %struct.drm_property** %13, align 8
  %15 = icmp ne %struct.drm_property* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

17:                                               ; preds = %3
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @drm_tv_select_enum_list, align 4
  %20 = load i32, i32* @drm_tv_select_enum_list, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %18, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  store %struct.drm_property* %22, %struct.drm_property** %8, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 12
  store %struct.drm_property* %23, %struct.drm_property** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %29 = load i32, i32* @drm_tv_subconnector_enum_list, align 4
  %30 = load i32, i32* @drm_tv_subconnector_enum_list, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %27, i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %31)
  store %struct.drm_property* %32, %struct.drm_property** %9, align 8
  %33 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 11
  store %struct.drm_property* %33, %struct.drm_property** %36, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = call i8* @drm_property_create_range(%struct.drm_device* %37, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 100)
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 10
  store i8* %38, i8** %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = call i8* @drm_property_create_range(%struct.drm_device* %42, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 100)
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 9
  store i8* %43, i8** %46, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = call i8* @drm_property_create_range(%struct.drm_device* %47, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 100)
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 8
  store i8* %48, i8** %51, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = call i8* @drm_property_create_range(%struct.drm_device* %52, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 100)
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  store i8* %53, i8** %56, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @drm_property_create(%struct.drm_device* %57, i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 8
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %81, %17
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i8**, i8*** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @drm_property_add_enum(i32 %72, i32 %73, i32 %74, i8* %79)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %64

84:                                               ; preds = %64
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = call i8* @drm_property_create_range(%struct.drm_device* %85, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 100)
  %87 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i8* %86, i8** %89, align 8
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = call i8* @drm_property_create_range(%struct.drm_device* %90, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 100)
  %92 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  store i8* %91, i8** %94, align 8
  %95 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %96 = call i8* @drm_property_create_range(%struct.drm_device* %95, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 100)
  %97 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %101 = call i8* @drm_property_create_range(%struct.drm_device* %100, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 100)
  %102 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %103 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 8
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = call i8* @drm_property_create_range(%struct.drm_device* %105, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 100)
  %107 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i8* %106, i8** %109, align 8
  %110 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %111 = call i8* @drm_property_create_range(%struct.drm_device* %110, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 100)
  %112 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %84, %16
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @drm_property_add_enum(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
