; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_finish_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_finish_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i64, %struct.TYPE_2__, %struct.radeon_cs_chunk* }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_cs_chunk = type { i32, i32, i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_finish_pages(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.radeon_cs_chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %7 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %7, i32 0, i32 2
  %9 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %10 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %9, i64 %12
  store %struct.radeon_cs_chunk* %13, %struct.radeon_cs_chunk** %4, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %69, %1
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %22 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %31
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = sdiv i32 %49, 4
  %51 = mul nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @DRM_COPY_FROM_USER(i64 %53, i64 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %43
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %19

72:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @DRM_COPY_FROM_USER(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
