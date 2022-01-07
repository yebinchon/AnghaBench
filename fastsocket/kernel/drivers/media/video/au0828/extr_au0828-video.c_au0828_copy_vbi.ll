; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_copy_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_copy_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32 }
%struct.au0828_dmaqueue = type { i64 }
%struct.au0828_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dma_q is null\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"p is null\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"outp is null\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i64)* @au0828_copy_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_copy_vbi(%struct.au0828_dev* %0, %struct.au0828_dmaqueue* %1, %struct.au0828_buffer* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca %struct.au0828_dmaqueue*, align 8
  %9 = alloca %struct.au0828_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %7, align 8
  store %struct.au0828_dmaqueue* %1, %struct.au0828_dmaqueue** %8, align 8
  store %struct.au0828_buffer* %2, %struct.au0828_buffer** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %19 = icmp eq %struct.au0828_dev* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %112

22:                                               ; preds = %6
  %23 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %24 = icmp eq %struct.au0828_dmaqueue* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %112

27:                                               ; preds = %22
  %28 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %29 = icmp eq %struct.au0828_buffer* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %112

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %112

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %112

41:                                               ; preds = %36
  %42 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %43 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %46 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %47, %48
  %50 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %51 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %57 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %61 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %55, %41
  %65 = load i8*, i8** %10, align 8
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %68 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = udiv i64 %69, 2
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8* %71, i8** %13, align 8
  %72 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %73 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %79 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = load i8*, i8** %13, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %13, align 8
  br label %85

85:                                               ; preds = %76, %64
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %12, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 %97, i8* %102, align 1
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %16, align 4
  br label %86

106:                                              ; preds = %86
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %109 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %106, %39, %34, %30, %25, %20
  ret void
}

declare dso_local i32 @au0828_isocdbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
