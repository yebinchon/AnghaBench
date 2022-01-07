; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_filter.c_dvb_filter_get_ac3info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_filter.c_dvb_filter_get_ac3info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_audio_info = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"Audiostream: AC3\00", align 1
@ac3_bitrates = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"  BRate: %d kb/s\00", align 1
@freq = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"  Freq: %d Hz\0A\00", align 1
@ac3_frames = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"  Framesize %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_filter_get_ac3info(i32* %0, i32 %1, %struct.dvb_audio_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_audio_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dvb_audio_info* %2, %struct.dvb_audio_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %43, %4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %44

25:                                               ; preds = %23
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 11
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 119
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %43

40:                                               ; preds = %34, %25
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %39
  br label %16

44:                                               ; preds = %23
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %158

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %56 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 5
  %59 = load i32, i32* %7, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %158

62:                                               ; preds = %53
  %63 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %64 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 63
  store i32 %73, i32* %13, align 4
  %74 = load i32*, i32** @ac3_bitrates, align 8
  %75 = load i32, i32* %13, align 4
  %76 = ashr i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 1000
  %81 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %82 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %62
  %86 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %87 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 1000
  %90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %62
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 192
  %96 = ashr i32 %95, 6
  %97 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %98 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 192
  %103 = ashr i32 %102, 6
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** @freq, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 100
  %110 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %111 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %91
  %115 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %116 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %91
  %120 = load i32**, i32*** @ac3_frames, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = ashr i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %131 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %13, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %119
  %136 = load i32, i32* %14, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %140 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %138, %135, %119
  %144 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %145 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 1
  %148 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %149 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load %struct.dvb_audio_info*, %struct.dvb_audio_info** %8, align 8
  %154 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %152, %143
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %61, %47
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
