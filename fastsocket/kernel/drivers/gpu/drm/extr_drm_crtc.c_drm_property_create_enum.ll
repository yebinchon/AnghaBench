; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_property_create_enum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_property_create_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_prop_enum_list = type { i32, i32 }

@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %0, i32 %1, i8* %2, %struct.drm_prop_enum_list* %3, i32 %4) #0 {
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_prop_enum_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.drm_prop_enum_list* %3, %struct.drm_prop_enum_list** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %18, i32 %19, i8* %20, i32 %21)
  store %struct.drm_property* %22, %struct.drm_property** %12, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %24 = icmp ne %struct.drm_property* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store %struct.drm_property* null, %struct.drm_property** %6, align 8
  br label %59

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %34, i64 %36
  %38 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %40, i64 %42
  %44 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @drm_property_add_enum(%struct.drm_property* %32, i32 %33, i32 %39, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %51 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %52 = call i32 @drm_property_destroy(%struct.drm_device* %50, %struct.drm_property* %51)
  store %struct.drm_property* null, %struct.drm_property** %6, align 8
  br label %59

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  store %struct.drm_property* %58, %struct.drm_property** %6, align 8
  br label %59

59:                                               ; preds = %57, %49, %25
  %60 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  ret %struct.drm_property* %60
}

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @drm_property_add_enum(%struct.drm_property*, i32, i32, i32) #1

declare dso_local i32 @drm_property_destroy(%struct.drm_device*, %struct.drm_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
