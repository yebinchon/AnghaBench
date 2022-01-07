; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_audio_analog_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_audio_analog_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.em28xx = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@EM28XX_NO_AC97 = common dso_local global i64 0, align 8
@outputs = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"couldn't setup AC97 register %d\0A\00", align 1
@EM28XX_XCLK_AUDIO_UNMUTE = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@AC97_POWER_DOWN_CTRL = common dso_local global i32 0, align 4
@AC97_EXT_AUD_CTRL = common dso_local global i32 0, align 4
@AC97_PCM_IN_SRATE = common dso_local global i32 0, align 4
@EM28XX_AOUT_PCM_IN = common dso_local global i32 0, align 4
@AC97_RECORD_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_audio_analog_set(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %178

15:                                               ; preds = %1
  %16 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EM28XX_NO_AC97, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @em28xx_write_ac97(%struct.em28xx* %29, i32 %35, i32 32768)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @em28xx_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %39, %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %23

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %15
  %53 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 127
  store i32 %57, i32* %6, align 4
  %58 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @EM28XX_XCLK_AUDIO_UNMUTE, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %68 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @em28xx_write_reg(%struct.em28xx* %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %178

75:                                               ; preds = %66
  %76 = call i32 @msleep(i32 10)
  %77 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %78 = call i32 @em28xx_set_audio_source(%struct.em28xx* %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EM28XX_NO_AC97, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %176

85:                                               ; preds = %75
  %86 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %87 = load i32, i32* @AC97_POWER_DOWN_CTRL, align 4
  %88 = call i32 @em28xx_write_ac97(%struct.em28xx* %86, i32 %87, i32 16896)
  %89 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %90 = load i32, i32* @AC97_EXT_AUD_CTRL, align 4
  %91 = call i32 @em28xx_write_ac97(%struct.em28xx* %89, i32 %90, i32 49)
  %92 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %93 = load i32, i32* @AC97_PCM_IN_SRATE, align 4
  %94 = call i32 @em28xx_write_ac97(%struct.em28xx* %92, i32 %93, i32 48000)
  %95 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 31, %97
  %99 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %100 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 31, %101
  %103 = shl i32 %102, 8
  %104 = or i32 %98, %103
  store i32 %104, i32* %7, align 4
  %105 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %106 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %85
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, 32768
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %85
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %152, %112
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %115)
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %113
  %119 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %120 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %121, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @em28xx_write_ac97(%struct.em28xx* %131, i32 %137, i32 %138)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %130, %118
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @outputs, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @em28xx_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %143, %140
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %113

155:                                              ; preds = %113
  %156 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %157 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @EM28XX_AOUT_PCM_IN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %155
  %163 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %164 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ac97_return_record_select(i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = shl i32 %167, 8
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %172 = load i32, i32* @AC97_RECORD_SELECT, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @em28xx_write_ac97(%struct.em28xx* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %162, %155
  br label %176

176:                                              ; preds = %175, %75
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %73, %14
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @em28xx_write_ac97(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @em28xx_warn(i8*, i32) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @em28xx_set_audio_source(%struct.em28xx*) #1

declare dso_local i32 @ac97_return_record_select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
