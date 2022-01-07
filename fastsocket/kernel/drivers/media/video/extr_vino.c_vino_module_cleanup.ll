; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_module_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_module_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@vino_drvdata = common dso_local global %struct.TYPE_9__* null, align 8
@vino_i2c_adapter = common dso_local global i32 0, align 4
@SGI_VINO_IRQ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@VINO_DUMMY_DESC_COUNT = common dso_local global i32 0, align 4
@vino = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vino_module_cleanup(): invalid cleanup stage = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vino_module_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_module_cleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %99 [
    i32 11, label %4
    i32 10, label %13
    i32 9, label %22
    i32 8, label %24
    i32 7, label %27
    i32 6, label %43
    i32 5, label %59
    i32 4, label %83
    i32 3, label %88
    i32 2, label %92
    i32 1, label %95
    i32 0, label %98
  ]

4:                                                ; preds = %1
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @video_unregister_device(i32* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  br label %13

13:                                               ; preds = %1, %4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @video_unregister_device(i32* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %1, %13
  %23 = call i32 @i2c_del_adapter(i32* @vino_i2c_adapter)
  br label %24

24:                                               ; preds = %1, %22
  %25 = load i32, i32* @SGI_VINO_IRQ, align 4
  %26 = call i32 @free_irq(i32 %25, i32* null)
  br label %27

27:                                               ; preds = %1, %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @video_device_release(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %1, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @video_device_release(i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %1, %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i32 @dma_unmap_single(i32* null, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @VINO_DUMMY_DESC_COUNT, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dma_free_coherent(i32* null, i32 %72, i8* %77, i32 %81)
  br label %83

83:                                               ; preds = %1, %59
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @free_page(i32 %86)
  br label %88

88:                                               ; preds = %1, %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @v4l2_device_unregister(i32* %90)
  br label %92

92:                                               ; preds = %1, %88
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vino_drvdata, align 8
  %94 = call i32 @kfree(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %1, %92
  %96 = load i32, i32* @vino, align 4
  %97 = call i32 @iounmap(i32 %96)
  br label %98

98:                                               ; preds = %1, %95
  br label %102

99:                                               ; preds = %1
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %98
  ret void
}

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @video_device_release(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @free_page(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
