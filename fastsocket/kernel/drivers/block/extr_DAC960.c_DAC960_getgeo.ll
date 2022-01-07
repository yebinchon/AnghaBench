; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.gendisk* }
%struct.gendisk = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@DAC960_V1_Controller = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Illegal Logical Device Geometry %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @DAC960_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %10 = load %struct.block_device*, %struct.block_device** %4, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load %struct.gendisk*, %struct.gendisk** %11, align 8
  store %struct.gendisk* %12, %struct.gendisk** %6, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %19 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DAC960_V1_Controller, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %33 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %39 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %50 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %53 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = sdiv i32 %48, %55
  %57 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %58 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %103

59:                                               ; preds = %2
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %63, i64 %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %9, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %81 [
    i32 129, label %71
    i32 128, label %76
  ]

71:                                               ; preds = %59
  %72 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %73 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %72, i32 0, i32 0
  store i32 128, i32* %73, align 4
  %74 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %75 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %74, i32 0, i32 1
  store i32 32, i32* %75, align 4
  br label %89

76:                                               ; preds = %59
  %77 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %78 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %77, i32 0, i32 0
  store i32 255, i32* %78, align 4
  %79 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %80 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %79, i32 0, i32 1
  store i32 63, i32* %80, align 4
  br label %89

81:                                               ; preds = %59
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DAC960_Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %82, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %104

89:                                               ; preds = %76, %71
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %94 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %97 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = sdiv i32 %92, %99
  %101 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %102 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %89, %27
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @DAC960_Error(i8*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
