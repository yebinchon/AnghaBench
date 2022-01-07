; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_audio_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_audio_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.bttv = type { i32, i32, i64, i64, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_control = type { i32, i32 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@BT848_DSTATUS = common dso_local global i32 0, align 4
@BT848_DSTATUS_HLOC = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@audio_modes = common dso_local global i32* null, align 8
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_ctrl = common dso_local global i32 0, align 4
@MSP_IN_SCART2 = common dso_local global i32 0, align 4
@MSP_IN_TUNER1 = common dso_local global i32 0, align 4
@MSP_DSP_IN_SCART = common dso_local global i32 0, align 4
@MSP_IN_SCART1 = common dso_local global i32 0, align 4
@MSP_IN_TUNER2 = common dso_local global i32 0, align 4
@MSP_DSP_IN_TUNER = common dso_local global i32 0, align 4
@MSP_INPUT_DEFAULT = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@MSP_OUTPUT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, i32, i32)* @audio_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_mux(%struct.bttv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_control, align 4
  %11 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %13 = load %struct.bttv*, %struct.bttv** %5, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %21 = load %struct.bttv*, %struct.bttv** %5, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gpio_inout(i32 %19, i32 %27)
  %29 = load i32, i32* @BT848_DSTATUS, align 4
  %30 = call i32 @btread(i32 %29)
  %31 = load i32, i32* @BT848_DSTATUS_HLOC, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.bttv*, %struct.bttv** %5, align 8
  %35 = getelementptr inbounds %struct.bttv, %struct.bttv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.bttv*, %struct.bttv** %5, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %3
  %42 = load %struct.bttv*, %struct.bttv** %5, align 8
  %43 = getelementptr inbounds %struct.bttv, %struct.bttv* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load %struct.bttv*, %struct.bttv** %5, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %46, %41
  %56 = phi i1 [ false, %46 ], [ false, %41 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %3
  %58 = phi i1 [ true, %3 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %64 = load %struct.bttv*, %struct.bttv** %5, align 8
  %65 = getelementptr inbounds %struct.bttv, %struct.bttv* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %8, align 4
  br label %84

71:                                               ; preds = %57
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %73 = load %struct.bttv*, %struct.bttv** %5, align 8
  %74 = getelementptr inbounds %struct.bttv, %struct.bttv* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %71, %62
  %85 = load %struct.bttv*, %struct.bttv** %5, align 8
  %86 = getelementptr inbounds %struct.bttv, %struct.bttv* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  switch i64 %88, label %93 [
    i64 132, label %89
    i64 133, label %89
  ]

89:                                               ; preds = %84, %84
  %90 = load %struct.bttv*, %struct.bttv** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @bttv_tda9880_setnorm(%struct.bttv* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %104

93:                                               ; preds = %84
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %95 = load %struct.bttv*, %struct.bttv** %5, align 8
  %96 = getelementptr inbounds %struct.bttv, %struct.bttv* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @gpio_bits(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %93, %89
  %105 = load i64, i64* @bttv_gpio, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load %struct.bttv*, %struct.bttv** %5, align 8
  %109 = load i32*, i32** @audio_modes, align 8
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi i32 [ 4, %112 ], [ %114, %113 ]
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %109, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bttv_gpio_tracking(%struct.bttv* %108, i32 %119)
  br label %121

121:                                              ; preds = %115, %104
  %122 = call i64 (...) @in_interrupt()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %199

125:                                              ; preds = %121
  %126 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %127 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load %struct.bttv*, %struct.bttv** %5, align 8
  %129 = getelementptr inbounds %struct.bttv, %struct.bttv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.bttv*, %struct.bttv** %5, align 8
  %133 = load i32, i32* @core, align 4
  %134 = load i32, i32* @s_ctrl, align 4
  %135 = call i32 @bttv_call_all(%struct.bttv* %132, i32 %133, i32 %134, %struct.v4l2_control* %10)
  %136 = load %struct.bttv*, %struct.bttv** %5, align 8
  %137 = getelementptr inbounds %struct.bttv, %struct.bttv* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %125
  %141 = load i32, i32* %6, align 4
  switch i32 %141, label %161 [
    i32 129, label %142
    i32 131, label %148
    i32 130, label %154
    i32 128, label %160
  ]

142:                                              ; preds = %140
  %143 = load i32, i32* @MSP_IN_SCART2, align 4
  %144 = load i32, i32* @MSP_IN_TUNER1, align 4
  %145 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %146 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %147 = call i32 @MSP_INPUT(i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %11, align 4
  br label %176

148:                                              ; preds = %140
  %149 = load i32, i32* @MSP_IN_SCART1, align 4
  %150 = load i32, i32* @MSP_IN_TUNER1, align 4
  %151 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %152 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %153 = call i32 @MSP_INPUT(i32 %149, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %11, align 4
  br label %176

154:                                              ; preds = %140
  %155 = load i32, i32* @MSP_IN_SCART2, align 4
  %156 = load i32, i32* @MSP_IN_TUNER1, align 4
  %157 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %158 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %159 = call i32 @MSP_INPUT(i32 %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %11, align 4
  br label %176

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %140, %160
  %162 = load %struct.bttv*, %struct.bttv** %5, align 8
  %163 = getelementptr inbounds %struct.bttv, %struct.bttv* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 133
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load i32, i32* @MSP_IN_SCART1, align 4
  %169 = load i32, i32* @MSP_IN_TUNER2, align 4
  %170 = load i32, i32* @MSP_DSP_IN_TUNER, align 4
  %171 = load i32, i32* @MSP_DSP_IN_TUNER, align 4
  %172 = call i32 @MSP_INPUT(i32 %168, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %11, align 4
  br label %175

173:                                              ; preds = %161
  %174 = load i32, i32* @MSP_INPUT_DEFAULT, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %173, %167
  br label %176

176:                                              ; preds = %175, %154, %148, %142
  %177 = load %struct.bttv*, %struct.bttv** %5, align 8
  %178 = getelementptr inbounds %struct.bttv, %struct.bttv* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @audio, align 4
  %181 = load i32, i32* @s_routing, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @MSP_OUTPUT_DEFAULT, align 4
  %184 = call i32 @v4l2_subdev_call(i64 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 0)
  br label %185

185:                                              ; preds = %176, %125
  %186 = load %struct.bttv*, %struct.bttv** %5, align 8
  %187 = getelementptr inbounds %struct.bttv, %struct.bttv* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load %struct.bttv*, %struct.bttv** %5, align 8
  %192 = getelementptr inbounds %struct.bttv, %struct.bttv* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @audio, align 4
  %195 = load i32, i32* @s_routing, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @v4l2_subdev_call(i64 %193, i32 %194, i32 %195, i32 %196, i32 0, i32 0)
  br label %198

198:                                              ; preds = %190, %185
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %124
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @bttv_tda9880_setnorm(%struct.bttv*, i32) #1

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @MSP_INPUT(i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
