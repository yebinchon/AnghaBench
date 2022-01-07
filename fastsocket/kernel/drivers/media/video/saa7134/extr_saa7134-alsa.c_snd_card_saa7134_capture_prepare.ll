; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.snd_pcm_substream* }
%struct.TYPE_14__ = type { i32*, %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MIXER_ADDR_TVTUNER = common dso_local global i64 0, align 8
@SAA7134_NUM_SAMPLES0 = common dso_local global i32 0, align 4
@SAA7134_NUM_SAMPLES1 = common dso_local global i32 0, align 4
@SAA7134_NUM_SAMPLES2 = common dso_local global i32 0, align 4
@SAA7134_AUDIO_FORMAT_CTRL = common dso_local global i32 0, align 4
@SAA7133_NUM_SAMPLES = common dso_local global i32 0, align 4
@SAA7133_AUDIO_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"rec_start: afmt=%d ch=%d  =>  fmt=0x%x swap=%c\0A\00", align 1
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_ME = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BSWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_card_saa7134_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_saa7134_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call %struct.TYPE_14__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %10, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store %struct.snd_pcm_substream* %19, %struct.snd_pcm_substream** %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.saa7134_dev*, %struct.saa7134_dev** %26, align 8
  store %struct.saa7134_dev* %27, %struct.saa7134_dev** %9, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_pcm_format_width(i32 %30)
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %35

34:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @snd_pcm_format_signed(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @snd_pcm_format_big_endian(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %154 [
    i32 129, label %57
    i32 130, label %119
    i32 128, label %119
  ]

57:                                               ; preds = %51
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 1, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, 8
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 2, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, 24
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i64, i64* @MIXER_ADDR_TVTUNER, align 8
  %81 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %82 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %80, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 192, i32 128
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @SAA7134_NUM_SAMPLES0, align 4
  %91 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %92 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %95, 255
  %97 = call i32 @saa_writeb(i32 %90, i32 %96)
  %98 = load i32, i32* @SAA7134_NUM_SAMPLES1, align 4
  %99 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %100 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %103, 65280
  %105 = ashr i32 %104, 8
  %106 = call i32 @saa_writeb(i32 %98, i32 %105)
  %107 = load i32, i32* @SAA7134_NUM_SAMPLES2, align 4
  %108 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %109 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %112, 16711680
  %114 = ashr i32 %113, 16
  %115 = call i32 @saa_writeb(i32 %107, i32 %114)
  %116 = load i32, i32* @SAA7134_AUDIO_FORMAT_CTRL, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @saa_writeb(i32 %116, i32 %117)
  br label %154

119:                                              ; preds = %51, %51
  %120 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 1, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, 16
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 2, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, 32
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* @SAA7133_NUM_SAMPLES, align 4
  %143 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %144 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @saa_writel(i32 %142, i32 %147)
  %149 = load i32, i32* @SAA7133_AUDIO_CHANNEL, align 4
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 %150, 24
  %152 = or i32 5517840, %151
  %153 = call i32 @saa_writel(i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %51, %141, %79
  %155 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %159 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 98, i32 45
  %166 = trunc i32 %165 to i8
  %167 = call i32 @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %160, i32 %161, i8 signext %166)
  %168 = load i32, i32* @SAA7134_RS_CONTROL_BURST_16, align 4
  %169 = load i32, i32* @SAA7134_RS_CONTROL_ME, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %172 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = ashr i32 %175, 12
  %177 = or i32 %170, %176
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %154
  %181 = load i32, i32* @SAA7134_RS_CONTROL_BSWAP, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %180, %154
  %185 = call i32 @SAA7134_RS_BA1(i32 6)
  %186 = call i32 @saa_writel(i32 %185, i32 0)
  %187 = call i32 @SAA7134_RS_BA2(i32 6)
  %188 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %189 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @saa_writel(i32 %187, i32 %191)
  %193 = call i32 @SAA7134_RS_PITCH(i32 6)
  %194 = call i32 @saa_writel(i32 %193, i32 0)
  %195 = call i32 @SAA7134_RS_CONTROL(i32 6)
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @saa_writel(i32 %195, i32 %196)
  %198 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %199 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %202 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 4
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %208 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @snd_saa7134_capsrc_set(i32 %212, i32 1, i32 1, i32 1)
  ret i32 0
}

declare dso_local %struct.TYPE_14__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_signed(i32) #1

declare dso_local i64 @snd_pcm_format_big_endian(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @snd_saa7134_capsrc_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
