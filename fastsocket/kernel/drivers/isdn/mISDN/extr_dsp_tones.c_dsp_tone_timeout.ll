; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_tones.c_dsp_tone_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_dsp_tones.c_dsp_tone_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp = type { %struct.dsp_tone }
%struct.dsp_tone = type { i32, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.pattern = type { i32*, i32**, i32** }

@DATA_S = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_tone_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dsp*, align 8
  %4 = alloca %struct.dsp_tone*, align 8
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.dsp*
  store %struct.dsp* %8, %struct.dsp** %3, align 8
  %9 = load %struct.dsp*, %struct.dsp** %3, align 8
  %10 = getelementptr inbounds %struct.dsp, %struct.dsp* %9, i32 0, i32 0
  store %struct.dsp_tone* %10, %struct.dsp_tone** %4, align 8
  %11 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %12 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.pattern*
  store %struct.pattern* %14, %struct.pattern** %5, align 8
  %15 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %16 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %19 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %92

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.pattern*, %struct.pattern** %5, align 8
  %27 = getelementptr inbounds %struct.pattern, %struct.pattern* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %38 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pattern*, %struct.pattern** %5, align 8
  %40 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** @DATA_S, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.dsp*, %struct.dsp** %3, align 8
  %50 = call i32 @dsp_tone_hw_message(%struct.dsp* %49, i32* null, i32 0)
  br label %69

51:                                               ; preds = %35
  %52 = load %struct.dsp*, %struct.dsp** %3, align 8
  %53 = load %struct.pattern*, %struct.pattern** %5, align 8
  %54 = getelementptr inbounds %struct.pattern, %struct.pattern* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.pattern*, %struct.pattern** %5, align 8
  %61 = getelementptr inbounds %struct.pattern, %struct.pattern* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dsp_tone_hw_message(%struct.dsp* %52, i32* %59, i32 %67)
  br label %69

69:                                               ; preds = %51, %48
  %70 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %71 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %70, i32 0, i32 1
  %72 = call i32 @init_timer(%struct.TYPE_3__* %71)
  %73 = load i64, i64* @jiffies, align 8
  %74 = load %struct.pattern*, %struct.pattern** %5, align 8
  %75 = getelementptr inbounds %struct.pattern, %struct.pattern* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HZ, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sdiv i32 %82, 8000
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %73, %84
  %86 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %87 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load %struct.dsp_tone*, %struct.dsp_tone** %4, align 8
  %90 = getelementptr inbounds %struct.dsp_tone, %struct.dsp_tone* %89, i32 0, i32 1
  %91 = call i32 @add_timer(%struct.TYPE_3__* %90)
  br label %92

92:                                               ; preds = %69, %22
  ret void
}

declare dso_local i32 @dsp_tone_hw_message(%struct.dsp*, i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
