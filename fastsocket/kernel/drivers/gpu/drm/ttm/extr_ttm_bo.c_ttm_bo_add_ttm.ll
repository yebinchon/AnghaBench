; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_add_ttm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_add_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.ttm_bo_global*, %struct.ttm_bo_device* }
%struct.TYPE_5__ = type { i32 }
%struct.ttm_bo_global = type { i32 }
%struct.ttm_bo_device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* (%struct.ttm_bo_device*, i32, i32, i32)* }

@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Illegal buffer object type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32)* @ttm_bo_add_ttm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_add_ttm(%struct.ttm_buffer_object* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca %struct.ttm_bo_global*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 6
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %10, align 8
  store %struct.ttm_bo_device* %11, %struct.ttm_bo_device** %5, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %13 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %12, i32 0, i32 5
  %14 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %13, align 8
  store %struct.ttm_bo_global* %14, %struct.ttm_bo_global** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 4
  %17 = call i32 @TTM_ASSERT_LOCKED(i32* %16)
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %19, align 8
  %20 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %109 [
    i32 130, label %32
    i32 129, label %40
    i32 128, label %70
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @TTM_PAGE_FLAG_ZERO_ALLOC, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %28, %39
  %41 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %42 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__* (%struct.ttm_bo_device*, i32, i32, i32)*, %struct.TYPE_5__* (%struct.ttm_bo_device*, i32, i32, i32)** %44, align 8
  %46 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %48 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %54 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_5__* %45(%struct.ttm_bo_device* %46, i32 %51, i32 %52, i32 %55)
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 3
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %60 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp eq %struct.TYPE_5__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @unlikely(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %40
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %40
  br label %113

70:                                               ; preds = %28
  %71 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %72 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__* (%struct.ttm_bo_device*, i32, i32, i32)*, %struct.TYPE_5__* (%struct.ttm_bo_device*, i32, i32, i32)** %74, align 8
  %76 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PAGE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TTM_PAGE_FLAG_SG, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %6, align 8
  %86 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_5__* %75(%struct.ttm_bo_device* %76, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %90 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %89, i32 0, i32 3
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %90, align 8
  %91 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %92 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %91, i32 0, i32 3
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp eq %struct.TYPE_5__* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @unlikely(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %70
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %113

101:                                              ; preds = %70
  %102 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %103 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %106 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
  br label %113

109:                                              ; preds = %28
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %101, %98, %69
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @TTM_ASSERT_LOCKED(i32*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
