; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_buffer.c_drm_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_buffer.c_drm_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buffer = type { i32, %struct.drm_buffer** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Failed to allocate drm buffer object to hold %d bytes in %d pages.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Failed to allocate %dth page for drm buffer with %d bytes and %d pages.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_buffer_alloc(%struct.drm_buffer** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_buffer**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_buffer** %0, %struct.drm_buffer*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sdiv i32 %8, %9
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = add i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.drm_buffer* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  store %struct.drm_buffer* %18, %struct.drm_buffer** %19, align 8
  %20 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %21 = load %struct.drm_buffer*, %struct.drm_buffer** %20, align 8
  %22 = icmp eq %struct.drm_buffer* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %120

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %32 = load %struct.drm_buffer*, %struct.drm_buffer** %31, align 8
  %33 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %71, %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sub nsw i32 %40, %43
  %45 = call i32 @min(i32 %39, i32 %44)
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.drm_buffer* @kmalloc(i32 %45, i32 %46)
  %48 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %49 = load %struct.drm_buffer*, %struct.drm_buffer** %48, align 8
  %50 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %49, i32 0, i32 1
  %51 = load %struct.drm_buffer**, %struct.drm_buffer*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %51, i64 %53
  store %struct.drm_buffer* %47, %struct.drm_buffer** %54, align 8
  %55 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %56 = load %struct.drm_buffer*, %struct.drm_buffer** %55, align 8
  %57 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %56, i32 0, i32 1
  %58 = load %struct.drm_buffer**, %struct.drm_buffer*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %58, i64 %60
  %62 = load %struct.drm_buffer*, %struct.drm_buffer** %61, align 8
  %63 = icmp eq %struct.drm_buffer* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %38
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  br label %75

70:                                               ; preds = %38
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %34

74:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %120

75:                                               ; preds = %64
  %76 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %77 = load %struct.drm_buffer*, %struct.drm_buffer** %76, align 8
  %78 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %77, i32 0, i32 1
  %79 = load %struct.drm_buffer**, %struct.drm_buffer*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %79, i64 %81
  %83 = load %struct.drm_buffer*, %struct.drm_buffer** %82, align 8
  %84 = icmp ne %struct.drm_buffer* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %75
  %86 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %87 = load %struct.drm_buffer*, %struct.drm_buffer** %86, align 8
  %88 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %87, i32 0, i32 1
  %89 = load %struct.drm_buffer**, %struct.drm_buffer*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %89, i64 %91
  %93 = load %struct.drm_buffer*, %struct.drm_buffer** %92, align 8
  %94 = call i32 @kfree(%struct.drm_buffer* %93)
  br label %95

95:                                               ; preds = %85, %75
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %111, %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %103 = load %struct.drm_buffer*, %struct.drm_buffer** %102, align 8
  %104 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %103, i32 0, i32 1
  %105 = load %struct.drm_buffer**, %struct.drm_buffer*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %105, i64 %107
  %109 = load %struct.drm_buffer*, %struct.drm_buffer** %108, align 8
  %110 = call i32 @kfree(%struct.drm_buffer* %109)
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %7, align 4
  br label %98

114:                                              ; preds = %98
  %115 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %116 = load %struct.drm_buffer*, %struct.drm_buffer** %115, align 8
  %117 = call i32 @kfree(%struct.drm_buffer* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %114, %74, %23
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.drm_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, ...) #1

declare dso_local %struct.drm_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
