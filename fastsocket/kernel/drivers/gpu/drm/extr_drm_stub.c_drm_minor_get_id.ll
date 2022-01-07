; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_stub.c_drm_minor_get_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_stub.c_drm_minor_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@DRM_MINOR_CONTROL = common dso_local global i32 0, align 4
@DRM_MINOR_RENDER = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Out of memory expanding drawable idr\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @drm_minor_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_minor_get_id(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 63, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DRM_MINOR_CONTROL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 64
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 127
  store i32 %17, i32* %9, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @DRM_MINOR_RENDER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 128
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 255
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %13
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64 @idr_pre_get(i32* @drm_minors_idr, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %29
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @idr_get_new_above(i32* @drm_minors_idr, i32* null, i32 %41, i32* %6)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %29

51:                                               ; preds = %37
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %68

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @idr_remove(i32* @drm_minors_idr, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %61, %54, %33
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new_above(i32*, i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
