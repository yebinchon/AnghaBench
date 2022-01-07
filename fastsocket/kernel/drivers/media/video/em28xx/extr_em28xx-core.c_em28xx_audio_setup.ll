; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_audio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_audio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@CHIP_ID_EM2870 = common dso_local global i64 0, align 8
@CHIP_ID_EM2874 = common dso_local global i64 0, align 8
@EM28XX_R00_CHIPCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Config register raw data: 0x%02x\0A\00", align 1
@EM28XX_CHIPCFG_AC97 = common dso_local global i32 0, align 4
@EM28XX_CHIPCFG_AUDIOMASK = common dso_local global i32 0, align 4
@EM28XX_CHIPCFG_I2S_3_SAMPRATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"I2S Audio (3 sample rates)\0A\00", align 1
@EM28XX_CHIPCFG_I2S_5_SAMPRATES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"I2S Audio (5 sample rates)\0A\00", align 1
@AC97_VENDOR_ID1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"AC97 chip type couldn't be determined\0A\00", align 1
@AC97_VENDOR_ID2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"AC97 vendor ID = 0x%08x\0A\00", align 1
@AC97_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"AC97 features = 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"No AC97 audio processor\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Empia 202 AC97 audio processor detected\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Sigmatel audio processor detected(stac 97%02x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Unknown AC97 audio processor detected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_audio_setup(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_ID_EM2870, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_ID_EM2874, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14, %1
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %186

28:                                               ; preds = %14
  %29 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %30 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %41 = load i32, i32* @EM28XX_R00_CHIPCFG, align 4
  %42 = call i32 @em28xx_read_reg(%struct.em28xx* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @em28xx_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @EM28XX_CHIPCFG_AC97, align 4
  store i32 %48, i32* %7, align 4
  br label %85

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %186

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @EM28XX_CHIPCFG_I2S_3_SAMPRATES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @em28xx_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %83

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @EM28XX_CHIPCFG_I2S_5_SAMPRATES, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = call i32 (i8*, ...) @em28xx_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %80 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %47
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @EM28XX_CHIPCFG_AUDIOMASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @EM28XX_CHIPCFG_AC97, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %93 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 128, i32* %94, align 4
  br label %164

95:                                               ; preds = %85
  %96 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %97 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i32 130, i32* %98, align 4
  %99 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %100 = load i32, i32* @AC97_VENDOR_ID1, align 4
  %101 = call i32 @em28xx_read_ac97(%struct.em28xx* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = call i32 (i8*, ...) @em28xx_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %107 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i32 128, i32* %108, align 4
  %109 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 1
  store i32 0, i32* %110, align 8
  %111 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %112 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  br label %164

114:                                              ; preds = %95
  %115 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %116 = load i32, i32* @AC97_VENDOR_ID2, align 4
  %117 = call i32 @em28xx_read_ac97(%struct.em28xx* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %164

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = shl i32 %122, 16
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %128 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i8*, ...) @em28xx_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %133 = load i32, i32* @AC97_RESET, align 4
  %134 = call i32 @em28xx_read_ac97(%struct.em28xx* %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  br label %164

138:                                              ; preds = %121
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %141 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i8*, ...) @em28xx_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %154

147:                                              ; preds = %138
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 27280
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %152 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  store i32 131, i32* %153, align 4
  br label %163

154:                                              ; preds = %147, %138
  %155 = load i32, i32* %8, align 4
  %156 = ashr i32 %155, 8
  %157 = icmp eq i32 %156, 8619126
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %160 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  store i32 129, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %154
  br label %163

163:                                              ; preds = %162, %150
  br label %164

164:                                              ; preds = %163, %137, %120, %104, %91
  %165 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %166 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  switch i32 %168, label %182 [
    i32 128, label %169
    i32 131, label %171
    i32 129, label %173
    i32 130, label %180
  ]

169:                                              ; preds = %164
  %170 = call i32 (i8*, ...) @em28xx_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %183

171:                                              ; preds = %164
  %172 = call i32 (i8*, ...) @em28xx_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %183

173:                                              ; preds = %164
  %174 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %175 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 255
  %179 = call i32 (i8*, ...) @em28xx_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %178)
  br label %183

180:                                              ; preds = %164
  %181 = call i32 (i8*, ...) @em28xx_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %183

182:                                              ; preds = %164
  br label %183

183:                                              ; preds = %182, %180, %173, %171, %169
  %184 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %185 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %184)
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %54, %20
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @em28xx_read_reg(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_info(i8*, ...) #1

declare dso_local i32 @em28xx_read_ac97(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_warn(i8*, ...) #1

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
