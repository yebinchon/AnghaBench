; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RADEON_NR_SAREA_CLIPRECTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_clear(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_radeon_master_private*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %21, align 8
  store %struct.drm_radeon_master_private* %22, %struct.drm_radeon_master_private** %9, align 8
  %23 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %9, align 8
  %24 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %11, align 8
  %28 = load i32, i32* @RADEON_NR_SAREA_CLIPRECTS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %12, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %13, align 8
  %32 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %35 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %33, %struct.drm_file* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RADEON_NR_SAREA_CLIPRECTS, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load i32, i32* @RADEON_NR_SAREA_CLIPRECTS, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %3
  %48 = bitcast i32* %31 to i32**
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i64 @DRM_COPY_FROM_USER(i32** %48, i32 %51, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %71

63:                                               ; preds = %47
  %64 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %65 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %66 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = call i32 @radeon_cp_dispatch_clear(%struct.drm_device* %64, %struct.TYPE_7__* %67, %struct.TYPE_6__* %68, i32* %31)
  %70 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %63, %60
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DRM_DEBUG(i8*) #2

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #2

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #2

declare dso_local i64 @DRM_COPY_FROM_USER(i32**, i32, i32) #2

declare dso_local i32 @radeon_cp_dispatch_clear(%struct.drm_device*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*) #2

declare dso_local i32 @COMMIT_RING(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
