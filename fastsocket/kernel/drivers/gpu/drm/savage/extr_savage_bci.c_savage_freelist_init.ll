; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_freelist_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_bci.c_savage_freelist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, %struct.TYPE_3__* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.drm_buf*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [10 x i8] c"count=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @savage_freelist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_freelist_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.drm_device_dma*, align 8
  %5 = alloca %struct.drm_buf*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_device_dma*, %struct.drm_device_dma** %12, align 8
  store %struct.drm_device_dma* %13, %struct.drm_device_dma** %4, align 8
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store %struct.drm_buf* null, %struct.drm_buf** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.drm_buf* null, %struct.drm_buf** %39, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %83, %1
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %40
  %47 = load %struct.drm_device_dma*, %struct.drm_device_dma** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %47, i32 0, i32 1
  %49 = load %struct.drm_buf**, %struct.drm_buf*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %49, i64 %51
  %53 = load %struct.drm_buf*, %struct.drm_buf** %52, align 8
  store %struct.drm_buf* %53, %struct.drm_buf** %5, align 8
  %54 = load %struct.drm_buf*, %struct.drm_buf** %5, align 8
  %55 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %6, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = call i32 @SET_AGE(i32* %58, i32 0, i32 0)
  %60 = load %struct.drm_buf*, %struct.drm_buf** %5, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store %struct.drm_buf* %60, %struct.drm_buf** %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %82, align 8
  br label %83

83:                                               ; preds = %46
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %40

86:                                               ; preds = %40
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @SET_AGE(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
