; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_loadbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_dma.c_s3c2410_dma_loadbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_dma_chan = type { i32, i64, i64, i32*, i32 }
%struct.s3c2410_dma_buf = type { i32, i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"buffer is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"s3c2410_chan_loadbuffer: loading buff %p (0x%08lx,0x%06x)\0A\00", align 1
@S3C2410_DMALOAD_1LOADED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"load_state is S3C2410_DMALOAD_1LOADED\0A\00", align 1
@S3C2410_DMALOAD_1LOADED_1RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"state is S3C2410_DMALOAD_1LOADED_1RUNNING\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"load_state is none, checking for noreload (next=%p)\0A\00", align 1
@S3C2410_DCON_NORELOAD = common dso_local global i64 0, align 8
@S3C2410_DCON_AUTORELOAD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"dmaload: buffer is %p\0A\00", align 1
@S3C2410_DMA_DCON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"dmaload: unknown state %d in loadbuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2410_dma_chan*, %struct.s3c2410_dma_buf*)* @s3c2410_dma_loadbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_dma_loadbuffer(%struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2410_dma_chan*, align 8
  %5 = alloca %struct.s3c2410_dma_buf*, align 8
  %6 = alloca i64, align 8
  store %struct.s3c2410_dma_chan* %0, %struct.s3c2410_dma_chan** %4, align 8
  store %struct.s3c2410_dma_buf* %1, %struct.s3c2410_dma_buf** %5, align 8
  %7 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %8 = icmp eq %struct.s3c2410_dma_buf* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @dmawarn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %119

13:                                               ; preds = %2
  %14 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %15 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %16 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %20 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i8*, %struct.s3c2410_dma_buf*, ...) @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), %struct.s3c2410_dma_buf* %14, i64 %18, i64 %21)
  %23 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %24 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @S3C2410_DMALOAD_1LOADED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = call i32 (i8*, ...) @dmawarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %13
  %31 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %32 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @S3C2410_DMALOAD_1LOADED_1RUNNING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @dmawarn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %40 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %45 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to %struct.s3c2410_dma_buf*
  %48 = call i32 (i8*, %struct.s3c2410_dma_buf*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), %struct.s3c2410_dma_buf* %47)
  %49 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %50 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @S3C2410_DCON_NORELOAD, align 8
  br label %56

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %55 ]
  store i64 %57, i64* %6, align 8
  br label %60

58:                                               ; preds = %38
  %59 = load i64, i64* @S3C2410_DCON_AUTORELOAD, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %62 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, -268435456
  %65 = icmp ne i32 %64, 805306368
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %68 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 (i8*, ...) @dmawarn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %75 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %78 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @writel(i32 %76, i32 %79)
  %81 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %82 = load i32, i32* @S3C2410_DMA_DCON, align 4
  %83 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %84 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = or i64 %85, %86
  %88 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %89 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %92 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = udiv i64 %90, %93
  %95 = or i64 %87, %94
  %96 = call i32 @dma_wrreg(%struct.s3c2410_dma_chan* %81, i32 %82, i64 %95)
  %97 = load %struct.s3c2410_dma_buf*, %struct.s3c2410_dma_buf** %5, align 8
  %98 = getelementptr inbounds %struct.s3c2410_dma_buf, %struct.s3c2410_dma_buf* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %101 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %100, i32 0, i32 3
  store i32* %99, i32** %101, align 8
  %102 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %103 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  switch i32 %104, label %113 [
    i32 128, label %105
    i32 129, label %109
  ]

105:                                              ; preds = %73
  %106 = load i32, i32* @S3C2410_DMALOAD_1LOADED, align 4
  %107 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %108 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %118

109:                                              ; preds = %73
  %110 = load i32, i32* @S3C2410_DMALOAD_1LOADED_1RUNNING, align 4
  %111 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %112 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %118

113:                                              ; preds = %73
  %114 = load %struct.s3c2410_dma_chan*, %struct.s3c2410_dma_chan** %4, align 8
  %115 = getelementptr inbounds %struct.s3c2410_dma_chan, %struct.s3c2410_dma_chan* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i8*, ...) @dmawarn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %109, %105
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %9
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @dmawarn(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, %struct.s3c2410_dma_buf*, ...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dma_wrreg(%struct.s3c2410_dma_chan*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
