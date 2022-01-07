; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nouveau_dma_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_nouveau_dma_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NOUVEAU_DMA_SKIPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_dma_wait(%struct.nouveau_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @nv50_dma_wait(%struct.nouveau_channel* %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %140

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %128, %54, %21
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %139

29:                                               ; preds = %22
  %30 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %31 = call i32 @READ_GET(%struct.nouveau_channel* %30, i32* %8, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %140

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @NOUVEAU_DMA_SKIPS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %42
  br label %22

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %56, %60
  br i1 %61, label %62, label %128

62:                                               ; preds = %55
  %63 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %64 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %68 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %66, %70
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %73 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %76 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  br label %139

82:                                               ; preds = %62
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %84 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %85 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, 536870912
  %90 = call i32 @OUT_RING(%struct.nouveau_channel* %83, i32 %89)
  br label %91

91:                                               ; preds = %114, %82
  %92 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %93 = call i32 @READ_GET(%struct.nouveau_channel* %92, i32* %8, i32* %9)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %140

104:                                              ; preds = %91
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %114

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @NOUVEAU_DMA_SKIPS, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %91, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @NOUVEAU_DMA_SKIPS, align 4
  %120 = call i32 @WRITE_PUT(i32 %119)
  %121 = load i32, i32* @NOUVEAU_DMA_SKIPS, align 4
  %122 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %123 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 4
  %125 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %126 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %118, %55
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %131 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %129, %133
  %135 = sub nsw i32 %134, 1
  %136 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %137 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %22

139:                                              ; preds = %81, %22
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %101, %39, %16
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @nv50_dma_wait(%struct.nouveau_channel*, i32, i32) #1

declare dso_local i32 @READ_GET(%struct.nouveau_channel*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @WRITE_PUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
