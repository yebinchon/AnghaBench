; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_do_dma_wrap_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_dma.c_mga_do_dma_wrap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i64, i64 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MGA_DMAPAD = common dso_local global i32 0, align 4
@MGA_PRIMADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"   head = 0x%06lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"   tail = 0x%06x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"   wrap = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"  space = 0x%06x\0A\00", align 1
@MGA_PRIMEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mga_do_dma_wrap_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %3, align 8
  %8 = load i32, i32* @DMA_LOCALS, align 4
  %9 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @BEGIN_DMA_WRAP()
  %11 = load i32, i32* @MGA_DMAPAD, align 4
  %12 = load i32, i32* @MGA_DMAPAD, align 4
  %13 = load i32, i32* @MGA_DMAPAD, align 4
  %14 = load i32, i32* @MGA_DMAPAD, align 4
  %15 = call i32 @DMA_BLOCK(i32 %11, i32 0, i32 %12, i32 0, i32 %13, i32 0, i32 %14, i32 0)
  %16 = call i32 (...) @ADVANCE_DMA()
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  store i64 %26, i64* %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @MGA_PRIMADDRESS, align 4
  %36 = call i64 @MGA_READ(i32 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %60

50:                                               ; preds = %1
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %51, %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %44
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %61, %66
  %68 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %79)
  %81 = call i32 (...) @mga_flush_write_combine()
  %82 = load i32, i32* @MGA_PRIMEND, align 4
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = or i64 %83, %86
  %88 = call i32 @MGA_WRITE(i32 %82, i64 %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i32 @set_bit(i32 0, i32* %90)
  %92 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @BEGIN_DMA_WRAP(...) #1

declare dso_local i32 @DMA_BLOCK(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

declare dso_local i64 @MGA_READ(i32) #1

declare dso_local i32 @mga_flush_write_combine(...) #1

declare dso_local i32 @MGA_WRITE(i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
