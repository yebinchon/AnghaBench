; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_saa7134_capsrc_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_saa7134_capsrc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__**, i32, i32, %struct.saa7134_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.saa7134_dev = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SAA7134_AUDIO_FORMAT_CTRL = common dso_local global i32 0, align 4
@SAA7134_SIF_SAMPLE_FREQ = common dso_local global i32 0, align 4
@SAA7134_ANALOG_IO_SELECT = common dso_local global i32 0, align 4
@SAA7133_DIGITAL_OUTPUT_SEL1 = common dso_local global i32 0, align 4
@SAA7133_DIGITAL_INPUT_XBAR1 = common dso_local global i32 0, align 4
@SAA7133_ANALOG_IO_SELECT = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@MIXER_ADDR_UNSELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, i32, i32, i32)* @snd_saa7134_capsrc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_saa7134_capsrc_set(%struct.snd_kcontrol* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.saa7134_dev*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %20 = call %struct.TYPE_9__* @snd_kcontrol_chip(%struct.snd_kcontrol* %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %5, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %25, align 8
  store %struct.saa7134_dev* %26, %struct.saa7134_dev** %18, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %4
  %36 = phi i1 [ true, %4 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %60, %61
  br label %63

63:                                               ; preds = %55, %47, %43
  %64 = phi i1 [ true, %47 ], [ true, %43 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  %81 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %63, %35
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = call i32 @spin_unlock_irq(i32* %85)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %153

89:                                               ; preds = %83
  %90 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  %91 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %152 [
    i32 129, label %95
    i32 130, label %123
    i32 128, label %123
  ]

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  switch i32 %96, label %122 [
    i32 131, label %97
    i32 133, label %102
    i32 132, label %102
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @SAA7134_AUDIO_FORMAT_CTRL, align 4
  %99 = call i32 @saa_andorb(i32 %98, i32 192, i32 192)
  %100 = load i32, i32* @SAA7134_SIF_SAMPLE_FREQ, align 4
  %101 = call i32 @saa_andorb(i32 %100, i32 3, i32 0)
  br label %122

102:                                              ; preds = %95, %95
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 133, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 0, i32 8
  store i32 %106, i32* %16, align 4
  %107 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  %108 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 32000, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 3
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* @SAA7134_ANALOG_IO_SELECT, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @saa_andorb(i32 %114, i32 8, i32 %115)
  %117 = load i32, i32* @SAA7134_AUDIO_FORMAT_CTRL, align 4
  %118 = call i32 @saa_andorb(i32 %117, i32 192, i32 128)
  %119 = load i32, i32* @SAA7134_SIF_SAMPLE_FREQ, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @saa_andorb(i32 %119, i32 3, i32 %120)
  br label %122

122:                                              ; preds = %95, %102, %97
  br label %152

123:                                              ; preds = %89, %89
  store i32 3, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %124 = load i32, i32* %11, align 4
  switch i32 %124, label %128 [
    i32 131, label %125
    i32 133, label %126
    i32 132, label %127
  ]

125:                                              ; preds = %123
  store i32 0, i32* %15, align 4
  store i32 2, i32* %14, align 4
  br label %128

126:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  br label %128

127:                                              ; preds = %123
  store i32 9, i32* %14, align 4
  br label %128

128:                                              ; preds = %123, %127, %126, %125
  %129 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  %130 = load i32, i32* @SAA7133_DIGITAL_OUTPUT_SEL1, align 4
  %131 = call i32 @saa_dsp_writel(%struct.saa7134_dev* %129, i32 %130, i32 12303120)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134, %128
  %138 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  %139 = load i32, i32* @SAA7133_DIGITAL_INPUT_XBAR1, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @saa_dsp_writel(%struct.saa7134_dev* %138, i32 %139, i32 %140)
  %142 = load i32, i32* @SAA7133_ANALOG_IO_SELECT, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @saa_writel(i32 %142, i32 %143)
  br label %151

145:                                              ; preds = %134
  %146 = load %struct.saa7134_dev*, %struct.saa7134_dev** %18, align 8
  %147 = load i32, i32* @SAA7133_DIGITAL_INPUT_XBAR1, align 4
  %148 = call i32 @saa_dsp_writel(%struct.saa7134_dev* %146, i32 %147, i32 0)
  %149 = load i32, i32* @SAA7133_ANALOG_IO_SELECT, align 4
  %150 = call i32 @saa_writel(i32 %149, i32 0)
  br label %151

151:                                              ; preds = %145, %137
  br label %152

152:                                              ; preds = %89, %151, %122
  br label %153

153:                                              ; preds = %152, %83
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %196

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %166, i64 %168
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = call i32 @snd_ctl_notify(i32 %162, i32 %163, i32* %171)
  br label %173

173:                                              ; preds = %159, %156
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @MIXER_ADDR_UNSELECTED, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %188, i64 %190
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = call i32 @snd_ctl_notify(i32 %184, i32 %185, i32* %193)
  br label %195

195:                                              ; preds = %181, %177, %173
  br label %196

196:                                              ; preds = %195, %153
  %197 = load i32, i32* %10, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_9__* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @saa_dsp_writel(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
