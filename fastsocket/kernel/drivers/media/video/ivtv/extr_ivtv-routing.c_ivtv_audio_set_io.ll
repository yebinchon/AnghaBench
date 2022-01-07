; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-routing.c_ivtv_audio_set_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-routing.c_ivtv_audio_set_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.ivtv_card_audio_input*, %struct.ivtv_card_audio_input }
%struct.ivtv_card_audio_input = type { i64, i64 }

@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@IVTV_HW_M52790 = common dso_local global i32 0, align 4
@M52790_OUT_STEREO = common dso_local global i64 0, align 8
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@IVTV_HW_MSP34XX = common dso_local global i32 0, align 4
@MSP_SC_IN_DSP_SCART1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_audio_set_io(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.ivtv_card_audio_input*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 3
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store %struct.ivtv_card_audio_input* %15, %struct.ivtv_card_audio_input** %3, align 8
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.ivtv_card_audio_input*, %struct.ivtv_card_audio_input** %20, align 8
  %22 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ivtv_card_audio_input, %struct.ivtv_card_audio_input* %21, i64 %24
  store %struct.ivtv_card_audio_input* %25, %struct.ivtv_card_audio_input** %3, align 8
  br label %26

26:                                               ; preds = %16, %11
  %27 = load %struct.ivtv_card_audio_input*, %struct.ivtv_card_audio_input** %3, align 8
  %28 = getelementptr inbounds %struct.ivtv_card_audio_input, %struct.ivtv_card_audio_input* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IVTV_HW_M52790, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* @M52790_OUT_STEREO, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %26
  %41 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %42 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @audio, align 4
  %45 = load i32, i32* @s_routing, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @v4l2_subdev_call(i32 %43, i32 %44, i32 %45, i64 %46, i64 %47, i32 0)
  %49 = load %struct.ivtv_card_audio_input*, %struct.ivtv_card_audio_input** %3, align 8
  %50 = getelementptr inbounds %struct.ivtv_card_audio_input, %struct.ivtv_card_audio_input* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %52 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IVTV_HW_MSP34XX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %40
  %61 = load i32, i32* @MSP_SC_IN_DSP_SCART1, align 4
  %62 = call i64 @MSP_OUTPUT(i32 %61)
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %60, %40
  %64 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %65 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %66 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @audio, align 4
  %71 = load i32, i32* @s_routing, align 4
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ivtv_call_hw(%struct.ivtv* %64, i32 %69, i32 %70, i32 %71, i64 %72, i64 %73, i32 0)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i64, i64, i32) #1

declare dso_local i64 @MSP_OUTPUT(i32) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
