; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_alloc_dma_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_alloc_dma_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32*, i32**, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@dma_buf_size = common dso_local global i32 0, align 4
@n_dma_bufs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Insufficient DMA buffers, cannot operate\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Will limp along with only 2 buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*, i32)* @cafe_alloc_dma_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_alloc_dma_bufs(%struct.cafe_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cafe_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %8 = call i32 @cafe_set_config_needed(%struct.cafe_camera* %7, i32 1)
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @dma_buf_size, align 4
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %14 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %17 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %21 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %15, %11
  %23 = load i32, i32* @n_dma_bufs, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 3, i32* @n_dma_bufs, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %28 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %82, %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @n_dma_bufs, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %35 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %39 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %42 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @dma_alloc_coherent(i32* %37, i32 %40, i32* %46, i32 %47)
  %49 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %50 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* %48, i32** %54, align 8
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %56 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %33
  %64 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %65 = call i32 @cam_warn(%struct.cafe_camera* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %85

66:                                               ; preds = %33
  %67 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %68 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %75 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i32* %73, i32 204, i32 %76)
  %78 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %79 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %29

85:                                               ; preds = %63, %29
  %86 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %87 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %122 [
    i32 1, label %89
    i32 0, label %110
    i32 2, label %115
  ]

89:                                               ; preds = %85
  %90 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %91 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %95 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %98 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %97, i32 0, i32 2
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %103 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dma_free_coherent(i32* %93, i32 %96, i32* %101, i32 %106)
  %108 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %109 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %85, %89
  %111 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %112 = call i32 @cam_err(%struct.cafe_camera* %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %123

115:                                              ; preds = %85
  %116 = load i32, i32* @n_dma_bufs, align 4
  %117 = icmp sgt i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %120 = call i32 @cam_warn(%struct.cafe_camera* %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %85, %121
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %110
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @cafe_set_config_needed(%struct.cafe_camera*, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cam_warn(%struct.cafe_camera*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
