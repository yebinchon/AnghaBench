; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_copy_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_copy_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32 }
%struct.em28xx_dmaqueue = type { i64 }
%struct.em28xx_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dma_q is null\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"p is null\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"outp is null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, %struct.em28xx_dmaqueue*, %struct.em28xx_buffer*, i8*, i8*, i64)* @em28xx_copy_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_copy_vbi(%struct.em28xx* %0, %struct.em28xx_dmaqueue* %1, %struct.em28xx_buffer* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca %struct.em28xx_dmaqueue*, align 8
  %9 = alloca %struct.em28xx_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %7, align 8
  store %struct.em28xx_dmaqueue* %1, %struct.em28xx_dmaqueue** %8, align 8
  store %struct.em28xx_buffer* %2, %struct.em28xx_buffer** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %18 = icmp eq %struct.em28xx* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %104

21:                                               ; preds = %6
  %22 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %26 = icmp eq %struct.em28xx_dmaqueue* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %104

29:                                               ; preds = %21
  %30 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %31 = icmp eq %struct.em28xx_buffer* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %104

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %104

38:                                               ; preds = %33
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @em28xx_isocdbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %104

43:                                               ; preds = %38
  %44 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %45 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %50 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %48, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %60 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %54, %43
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %67 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8* %69, i8** %13, align 8
  %70 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %71 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %9, align 8
  %75 = getelementptr inbounds %struct.em28xx_buffer, %struct.em28xx_buffer* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %63
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %81 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = load i8*, i8** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr i8, i8* %84, i64 %85
  store i8* %86, i8** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %89 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %78, %63
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @memcpy(i8* %95, i8* %96, i64 %97)
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %101 = getelementptr inbounds %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %99
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %94, %41, %36, %32, %27, %19
  ret void
}

declare dso_local i32 @em28xx_isocdbg(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
