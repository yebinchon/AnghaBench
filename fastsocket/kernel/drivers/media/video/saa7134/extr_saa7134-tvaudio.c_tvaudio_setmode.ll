; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_tvaudio_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.saa7134_tvaudio = type { i32, i32, i32, i32 }

@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@audio_clock_tweak = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"tvaudio_setmode: %s %s [%d.%03d/%d.%03d MHz] acpf=%d%+d\0A\00", align 1
@SAA7134_AUDIO_CLOCKS_PER_FIELD0 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCKS_PER_FIELD1 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_CLOCKS_PER_FIELD2 = common dso_local global i32 0, align 4
@SAA7134_DEMODULATOR = common dso_local global i32 0, align 4
@SAA7134_DCXO_IDENT_CTRL = common dso_local global i32 0, align 4
@SAA7134_FM_DEEMPHASIS = common dso_local global i32 0, align 4
@SAA7134_FM_DEMATRIX = common dso_local global i32 0, align 4
@SAA7134_STEREO_DAC_OUTPUT_SELECT = common dso_local global i32 0, align 4
@SAA7134_NICAM_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, %struct.saa7134_tvaudio*, i8*)* @tvaudio_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvaudio_setmode(%struct.saa7134_dev* %0, %struct.saa7134_tvaudio* %1, i8* %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_tvaudio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_tvaudio* %1, %struct.saa7134_tvaudio** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_STD_NTSC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 102502, i32* %7, align 4
  br label %18

17:                                               ; preds = %3
  store i32 122880, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* @audio_clock_tweak, align 4
  %20 = icmp sgt i32 %19, -1024
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @audio_clock_tweak, align 4
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @audio_clock_tweak, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %21, %18
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %32 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %35 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 1000
  %38 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %39 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %40, 1000
  %42 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %43 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 1000
  %46 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %47 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 1000
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %29, %26
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @SAA7134_AUDIO_CLOCKS_PER_FIELD0, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 255
  %60 = ashr i32 %59, 0
  %61 = call i32 @saa_writeb(i32 %57, i32 %60)
  %62 = load i32, i32* @SAA7134_AUDIO_CLOCKS_PER_FIELD1, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 65280
  %65 = ashr i32 %64, 8
  %66 = call i32 @saa_writeb(i32 %62, i32 %65)
  %67 = load i32, i32* @SAA7134_AUDIO_CLOCKS_PER_FIELD2, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 196608
  %70 = ashr i32 %69, 16
  %71 = call i32 @saa_writeb(i32 %67, i32 %70)
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %73 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %74 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %77 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @tvaudio_setcarrier(%struct.saa7134_dev* %72, i32 %75, i32 %78)
  %80 = load %struct.saa7134_tvaudio*, %struct.saa7134_tvaudio** %5, align 8
  %81 = getelementptr inbounds %struct.saa7134_tvaudio, %struct.saa7134_tvaudio* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %128 [
    i32 131, label %83
    i32 133, label %83
    i32 132, label %94
    i32 128, label %105
    i32 129, label %116
    i32 130, label %127
  ]

83:                                               ; preds = %53, %53
  %84 = load i32, i32* @SAA7134_DEMODULATOR, align 4
  %85 = call i32 @saa_writeb(i32 %84, i32 0)
  %86 = load i32, i32* @SAA7134_DCXO_IDENT_CTRL, align 4
  %87 = call i32 @saa_writeb(i32 %86, i32 0)
  %88 = load i32, i32* @SAA7134_FM_DEEMPHASIS, align 4
  %89 = call i32 @saa_writeb(i32 %88, i32 34)
  %90 = load i32, i32* @SAA7134_FM_DEMATRIX, align 4
  %91 = call i32 @saa_writeb(i32 %90, i32 128)
  %92 = load i32, i32* @SAA7134_STEREO_DAC_OUTPUT_SELECT, align 4
  %93 = call i32 @saa_writeb(i32 %92, i32 160)
  br label %128

94:                                               ; preds = %53
  %95 = load i32, i32* @SAA7134_DEMODULATOR, align 4
  %96 = call i32 @saa_writeb(i32 %95, i32 0)
  %97 = load i32, i32* @SAA7134_DCXO_IDENT_CTRL, align 4
  %98 = call i32 @saa_writeb(i32 %97, i32 1)
  %99 = load i32, i32* @SAA7134_FM_DEEMPHASIS, align 4
  %100 = call i32 @saa_writeb(i32 %99, i32 34)
  %101 = load i32, i32* @SAA7134_FM_DEMATRIX, align 4
  %102 = call i32 @saa_writeb(i32 %101, i32 128)
  %103 = load i32, i32* @SAA7134_STEREO_DAC_OUTPUT_SELECT, align 4
  %104 = call i32 @saa_writeb(i32 %103, i32 160)
  br label %128

105:                                              ; preds = %53
  %106 = load i32, i32* @SAA7134_DEMODULATOR, align 4
  %107 = call i32 @saa_writeb(i32 %106, i32 16)
  %108 = load i32, i32* @SAA7134_DCXO_IDENT_CTRL, align 4
  %109 = call i32 @saa_writeb(i32 %108, i32 0)
  %110 = load i32, i32* @SAA7134_FM_DEEMPHASIS, align 4
  %111 = call i32 @saa_writeb(i32 %110, i32 68)
  %112 = load i32, i32* @SAA7134_STEREO_DAC_OUTPUT_SELECT, align 4
  %113 = call i32 @saa_writeb(i32 %112, i32 161)
  %114 = load i32, i32* @SAA7134_NICAM_CONFIG, align 4
  %115 = call i32 @saa_writeb(i32 %114, i32 0)
  br label %128

116:                                              ; preds = %53
  %117 = load i32, i32* @SAA7134_DEMODULATOR, align 4
  %118 = call i32 @saa_writeb(i32 %117, i32 18)
  %119 = load i32, i32* @SAA7134_DCXO_IDENT_CTRL, align 4
  %120 = call i32 @saa_writeb(i32 %119, i32 0)
  %121 = load i32, i32* @SAA7134_FM_DEEMPHASIS, align 4
  %122 = call i32 @saa_writeb(i32 %121, i32 68)
  %123 = load i32, i32* @SAA7134_STEREO_DAC_OUTPUT_SELECT, align 4
  %124 = call i32 @saa_writeb(i32 %123, i32 161)
  %125 = load i32, i32* @SAA7134_NICAM_CONFIG, align 4
  %126 = call i32 @saa_writeb(i32 %125, i32 0)
  br label %128

127:                                              ; preds = %53
  br label %128

128:                                              ; preds = %53, %127, %116, %105, %94, %83
  ret void
}

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @tvaudio_setcarrier(%struct.saa7134_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
