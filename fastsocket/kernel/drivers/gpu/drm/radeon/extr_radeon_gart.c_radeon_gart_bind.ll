; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_gart_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gart.c_radeon_gart_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64, %struct.page**, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"trying to bind memory to uninitialized GART !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gart_bind(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.page** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %108

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %29 = udiv i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %33 = udiv i32 %31, %32
  %34 = udiv i32 %30, %33
  store i32 %34, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %99, %26
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %35
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %44, i32* %51, align 4
  %52 = load %struct.page**, %struct.page*** %10, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load %struct.page**, %struct.page*** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.page*, %struct.page** %60, i64 %62
  store %struct.page* %56, %struct.page** %63, align 8
  %64 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %39
  %70 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %92, %69
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %82 = udiv i32 %80, %81
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @radeon_gart_set_page(%struct.radeon_device* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %78

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %39
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %35

104:                                              ; preds = %35
  %105 = call i32 (...) @mb()
  %106 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %107 = call i32 @radeon_gart_tlb_flush(%struct.radeon_device* %106)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %22
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @radeon_gart_set_page(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @radeon_gart_tlb_flush(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
