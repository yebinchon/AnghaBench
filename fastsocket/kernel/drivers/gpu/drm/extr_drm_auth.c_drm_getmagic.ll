; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_auth.c_drm_getmagic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_auth.c_drm_getmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i64 }
%struct.drm_auth = type { i64 }

@drm_getmagic.sequence = internal global i64 0, align 8
@drm_getmagic.lock = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_getmagic(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_auth*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.drm_auth*
  store %struct.drm_auth* %9, %struct.drm_auth** %7, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %11 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %16 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.drm_auth*, %struct.drm_auth** %7, align 8
  %19 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %57

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %34, %20
  %22 = call i32 @spin_lock(i32* @drm_getmagic.lock)
  %23 = load i64, i64* @drm_getmagic.sequence, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @drm_getmagic.sequence, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @drm_getmagic.sequence, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i64, i64* @drm_getmagic.sequence, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @drm_getmagic.sequence, align 8
  %31 = load %struct.drm_auth*, %struct.drm_auth** %7, align 8
  %32 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = call i32 @spin_unlock(i32* @drm_getmagic.lock)
  br label %34

34:                                               ; preds = %28
  %35 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %36 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_auth*, %struct.drm_auth** %7, align 8
  %39 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @drm_find_file(i32 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %21, label %43

43:                                               ; preds = %34
  %44 = load %struct.drm_auth*, %struct.drm_auth** %7, align 8
  %45 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %48 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %50 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %53 = load %struct.drm_auth*, %struct.drm_auth** %7, align 8
  %54 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @drm_add_magic(i32 %51, %struct.drm_file* %52, i64 %55)
  br label %57

57:                                               ; preds = %43, %14
  %58 = load %struct.drm_auth*, %struct.drm_auth** %7, align 8
  %59 = getelementptr inbounds %struct.drm_auth, %struct.drm_auth* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %60)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @drm_find_file(i32, i64) #1

declare dso_local i32 @drm_add_magic(i32, %struct.drm_file*, i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
