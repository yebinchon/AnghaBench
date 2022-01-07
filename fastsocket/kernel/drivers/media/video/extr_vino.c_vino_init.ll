; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, i64, %struct.TYPE_13__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vino_drvdata = common dso_local global %struct.TYPE_11__* null, align 8
@vino_init_stage = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vino\00", align 1
@GFP_DMA = common dso_local global i32 0, align 4
@VINO_DUMMY_DESC_COUNT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@vino = common dso_local global %struct.TYPE_12__* null, align 8
@VINO_DESC_FETCH_DELAY = common dso_local global i32 0, align 4
@VINO_FIFO_THRESHOLD_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vino_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_11__* @kzalloc(i32 4, i32 %5)
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** @vino_drvdata, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @vino_init_stage, align 4
  %11 = call i32 @vino_module_cleanup(i32 %10)
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %129

14:                                               ; preds = %0
  %15 = load i32, i32* @vino_init_stage, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @vino_init_stage, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strlcpy(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = call i32 @v4l2_device_register(i32* null, %struct.TYPE_13__* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %1, align 4
  br label %129

29:                                               ; preds = %14
  %30 = load i32, i32* @vino_init_stage, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @vino_init_stage, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @get_zeroed_page(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @vino_init_stage, align 4
  %44 = call i32 @vino_module_cleanup(i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %1, align 4
  br label %129

47:                                               ; preds = %29
  %48 = load i32, i32* @vino_init_stage, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @vino_init_stage, align 4
  %50 = load i32, i32* @VINO_DUMMY_DESC_COUNT, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load i32, i32* @GFP_DMA, align 4
  %59 = or i32 %57, %58
  %60 = call i32* @dma_alloc_coherent(i32* null, i32 %53, i32* %56, i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %47
  %70 = load i32, i32* @vino_init_stage, align 4
  %71 = call i32 @vino_module_cleanup(i32 %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %1, align 4
  br label %129

74:                                               ; preds = %47
  %75 = load i32, i32* @vino_init_stage, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @vino_init_stage, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = call i32 @dma_map_single(i32* null, i8* %80, i32 %81, i32 %82)
  store i32 %83, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %97, %74
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @VINO_DUMMY_DESC_COUNT, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84
  %89 = load i32, i32* %2, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %84

100:                                              ; preds = %84
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vino, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vino, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vino_drvdata, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vino, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* @VINO_DESC_FETCH_DELAY, align 4
  %118 = call i32 @udelay(i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vino, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load i8*, i8** @VINO_FIFO_THRESHOLD_DEFAULT, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vino, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @VINO_FIFO_THRESHOLD_DEFAULT, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** @vino, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  store i32 0, i32* %1, align 4
  br label %129

129:                                              ; preds = %100, %69, %42, %27, %9
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_11__* @kzalloc(i32, i32) #1

declare dso_local i32 @vino_module_cleanup(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
