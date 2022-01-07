; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_hashtab.c_drm_ht_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Out of memory for hash table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ht_create(%struct.drm_open_hash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_open_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %11 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %13 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = icmp ule i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kcalloc(i32 %21, i32 4, i32 %22)
  %24 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %25 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i32* @vzalloc(i32 %30)
  %32 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %33 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %36 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
