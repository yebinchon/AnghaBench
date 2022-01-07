; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_buf = type { i32, i32, %struct.TYPE_5__*, %struct.drm_file* }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"retcode=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mapbuf failed, retcode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_4__*, %struct.drm_file*)* @i810_dma_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_dma_get_buffer(%struct.drm_device* %0, %struct.TYPE_4__* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_buf*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = call %struct.drm_buf* @i810_freelist_get(%struct.drm_device* %11)
  store %struct.drm_buf* %12, %struct.drm_buf** %8, align 8
  %13 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %14 = icmp ne %struct.drm_buf* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %23 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %24 = call i32 @i810_map_buffer(%struct.drm_buf* %22, %struct.drm_file* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %30 = call i32 @i810_freelist_put(%struct.drm_device* %28, %struct.drm_buf* %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %21
  %35 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %36 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %37 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %36, i32 0, i32 3
  store %struct.drm_file* %35, %struct.drm_file** %37, align 8
  %38 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %39 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %9, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %44 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %49 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %34, %27, %15
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.drm_buf* @i810_freelist_get(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @i810_map_buffer(%struct.drm_buf*, %struct.drm_file*) #1

declare dso_local i32 @i810_freelist_put(%struct.drm_device*, %struct.drm_buf*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
