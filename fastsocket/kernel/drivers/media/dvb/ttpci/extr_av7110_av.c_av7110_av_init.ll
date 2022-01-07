; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_av_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_av_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32**, i64, i32, i32, %struct.ipack* }
%struct.ipack = type { %struct.av7110* }

@play_audio_cb = common dso_local global i32 0, align 4
@play_video_cb = common dso_local global i32 0, align 4
@IPACKS = common dso_local global i32 0, align 4
@AVOUTLEN = common dso_local global i64 0, align 8
@AOUTLEN = common dso_local global i64 0, align 8
@BMPLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_av_init(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  %3 = alloca [2 x void (i32*, i32, i8*)*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipack*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %7 = getelementptr inbounds [2 x void (i32*, i32, i8*)*], [2 x void (i32*, i32, i8*)*]* %3, i64 0, i64 0
  %8 = load i32, i32* @play_audio_cb, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to void (i32*, i32, i8*)*
  store void (i32*, i32, i8*)* %10, void (i32*, i32, i8*)** %7, align 8
  %11 = getelementptr inbounds void (i32*, i32, i8*)*, void (i32*, i32, i8*)** %7, i64 1
  %12 = load i32, i32* @play_video_cb, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to void (i32*, i32, i8*)*
  store void (i32*, i32, i8*)* %14, void (i32*, i32, i8*)** %11, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %46, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load %struct.av7110*, %struct.av7110** %2, align 8
  %20 = getelementptr inbounds %struct.av7110, %struct.av7110* %19, i32 0, i32 4
  %21 = load %struct.ipack*, %struct.ipack** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ipack, %struct.ipack* %21, i64 %23
  store %struct.ipack* %24, %struct.ipack** %6, align 8
  %25 = load %struct.ipack*, %struct.ipack** %6, align 8
  %26 = load i32, i32* @IPACKS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x void (i32*, i32, i8*)*], [2 x void (i32*, i32, i8*)*]* %3, i64 0, i64 %28
  %30 = load void (i32*, i32, i8*)*, void (i32*, i32, i8*)** %29, align 8
  %31 = call i32 @av7110_ipack_init(%struct.ipack* %25, i32 %26, void (i32*, i32, i8*)* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.ipack*, %struct.ipack** %6, align 8
  %39 = getelementptr inbounds %struct.ipack, %struct.ipack* %38, i32 -1
  store %struct.ipack* %39, %struct.ipack** %6, align 8
  %40 = call i32 @av7110_ipack_free(%struct.ipack* %39)
  br label %41

41:                                               ; preds = %37, %34
  br label %93

42:                                               ; preds = %18
  %43 = load %struct.av7110*, %struct.av7110** %2, align 8
  %44 = load %struct.ipack*, %struct.ipack** %6, align 8
  %45 = getelementptr inbounds %struct.ipack, %struct.ipack* %44, i32 0, i32 0
  store %struct.av7110* %43, %struct.av7110** %45, align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %15

49:                                               ; preds = %15
  %50 = load %struct.av7110*, %struct.av7110** %2, align 8
  %51 = getelementptr inbounds %struct.av7110, %struct.av7110* %50, i32 0, i32 3
  %52 = load %struct.av7110*, %struct.av7110** %2, align 8
  %53 = getelementptr inbounds %struct.av7110, %struct.av7110* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AVOUTLEN, align 8
  %56 = call i32 @dvb_ringbuffer_init(i32* %51, i64 %54, i64 %55)
  %57 = load %struct.av7110*, %struct.av7110** %2, align 8
  %58 = getelementptr inbounds %struct.av7110, %struct.av7110* %57, i32 0, i32 2
  %59 = load %struct.av7110*, %struct.av7110** %2, align 8
  %60 = getelementptr inbounds %struct.av7110, %struct.av7110* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AVOUTLEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* @AOUTLEN, align 8
  %65 = call i32 @dvb_ringbuffer_init(i32* %58, i64 %63, i64 %64)
  %66 = load %struct.av7110*, %struct.av7110** %2, align 8
  %67 = getelementptr inbounds %struct.av7110, %struct.av7110* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AVOUTLEN, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* @AOUTLEN, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i64, i64* @BMPLEN, align 8
  %74 = add nsw i64 %72, %73
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.av7110*, %struct.av7110** %2, align 8
  %77 = getelementptr inbounds %struct.av7110, %struct.av7110* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  store i32* %75, i32** %79, align 8
  %80 = load %struct.av7110*, %struct.av7110** %2, align 8
  %81 = getelementptr inbounds %struct.av7110, %struct.av7110* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @IPACKS, align 4
  %86 = mul nsw i32 2, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load %struct.av7110*, %struct.av7110** %2, align 8
  %90 = getelementptr inbounds %struct.av7110, %struct.av7110* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  store i32* %88, i32** %92, align 8
  br label %93

93:                                               ; preds = %49, %41
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @av7110_ipack_init(%struct.ipack*, i32, void (i32*, i32, i8*)*) #1

declare dso_local i32 @av7110_ipack_free(%struct.ipack*) #1

declare dso_local i32 @dvb_ringbuffer_init(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
