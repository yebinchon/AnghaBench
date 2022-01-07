; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_context.c_drm_resctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_context.c_drm_resctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_ctx_res = type { i32, i32* }
%struct.drm_ctx = type { i32 }

@DRM_RESERVED_CONTEXTS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_resctx(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_ctx_res*, align 8
  %9 = alloca %struct.drm_ctx, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_ctx_res*
  store %struct.drm_ctx_res* %12, %struct.drm_ctx_res** %8, align 8
  %13 = load %struct.drm_ctx_res*, %struct.drm_ctx_res** %8, align 8
  %14 = getelementptr inbounds %struct.drm_ctx_res, %struct.drm_ctx_res* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = call i32 @memset(%struct.drm_ctx* %9, i32 0, i32 4)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %39, %18
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.drm_ctx_res*, %struct.drm_ctx_res** %8, align 8
  %28 = getelementptr inbounds %struct.drm_ctx_res, %struct.drm_ctx_res* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i64 @copy_to_user(i32* %32, %struct.drm_ctx* %9, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %20

42:                                               ; preds = %20
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %45 = load %struct.drm_ctx_res*, %struct.drm_ctx_res** %8, align 8
  %46 = getelementptr inbounds %struct.drm_ctx_res, %struct.drm_ctx_res* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.drm_ctx*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32*, %struct.drm_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
