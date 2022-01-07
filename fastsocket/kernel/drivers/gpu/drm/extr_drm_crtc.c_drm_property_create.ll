; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_property_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_property_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32, i32, i8*, %struct.drm_property*, i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_PROPERTY = common dso_local global i32 0, align 4
@DRM_PROP_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_property_create(%struct.drm_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_property*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.drm_property* null, %struct.drm_property** %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 40, i32 %12)
  %14 = bitcast i8* %13 to %struct.drm_property*
  store %struct.drm_property* %14, %struct.drm_property** %10, align 8
  %15 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %16 = icmp ne %struct.drm_property* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %87

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.drm_property*
  %29 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %30 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %29, i32 0, i32 3
  store %struct.drm_property* %28, %struct.drm_property** %30, align 8
  %31 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %32 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %31, i32 0, i32 3
  %33 = load %struct.drm_property*, %struct.drm_property** %32, align 8
  %34 = icmp ne %struct.drm_property* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %21
  br label %80

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %40 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %39, i32 0, i32 6
  %41 = load i32, i32* @DRM_MODE_OBJECT_PROPERTY, align 4
  %42 = call i32 @drm_mode_object_get(%struct.drm_device* %38, i32* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %80

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %49 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %52 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %54 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %53, i32 0, i32 5
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %46
  %59 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %60 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %64 = call i32 @strncpy(i8* %61, i8* %62, i32 %63)
  %65 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %66 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %58, %46
  %73 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %74 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %73, i32 0, i32 4
  %75 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @list_add_tail(i32* %74, i32* %77)
  %79 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  store %struct.drm_property* %79, %struct.drm_property** %5, align 8
  br label %87

80:                                               ; preds = %45, %35
  %81 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %82 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %81, i32 0, i32 3
  %83 = load %struct.drm_property*, %struct.drm_property** %82, align 8
  %84 = call i32 @kfree(%struct.drm_property* %83)
  %85 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %86 = call i32 @kfree(%struct.drm_property* %85)
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %87

87:                                               ; preds = %80, %72, %17
  %88 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  ret %struct.drm_property* %88
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.drm_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
