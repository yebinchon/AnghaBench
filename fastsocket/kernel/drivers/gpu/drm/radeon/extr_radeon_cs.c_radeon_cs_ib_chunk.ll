; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ib_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_parser = type { i32, i32, %struct.TYPE_3__, i64, i32, %struct.radeon_cs_chunk* }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_cs_chunk = type { i32 }

@RADEON_CS_USE_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to get ib !\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid command stream !\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to schedule IB !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_cs_parser*)* @radeon_cs_ib_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cs_ib_chunk(%struct.radeon_device* %0, %struct.radeon_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_chunk*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_cs_parser* %1, %struct.radeon_cs_parser** %5, align 8
  %8 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %9 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RADEON_CS_USE_VM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %90

21:                                               ; preds = %13
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 5
  %24 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %23, align 8
  %25 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %26 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %24, i64 %28
  store %struct.radeon_cs_chunk* %29, %struct.radeon_cs_chunk** %6, align 8
  %30 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %31 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %34, i32 0, i32 2
  %36 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %37 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 4
  %40 = call i32 @radeon_ib_get(%struct.radeon_device* %30, i32 %33, %struct.TYPE_3__* %35, i32* null, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %21
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %90

46:                                               ; preds = %21
  %47 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %54 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %58 = call i32 @radeon_cs_parse(%struct.radeon_device* %53, i32 %56, %struct.radeon_cs_parser* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %46
  %62 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %46
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %90

69:                                               ; preds = %61
  %70 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %71 = call i32 @radeon_cs_finish_pages(%struct.radeon_cs_parser* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %90

77:                                               ; preds = %69
  %78 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %79 = call i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser* %78)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %81 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %81, i32 0, i32 2
  %83 = call i32 @radeon_ib_schedule(%struct.radeon_device* %80, %struct.TYPE_3__* %82, i32* null)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %77
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %74, %66, %43, %20, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_cs_parse(%struct.radeon_device*, i32, %struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_finish_pages(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_sync_rings(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
