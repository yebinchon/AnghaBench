; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-audio.c_cx18_av_audio_set_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-audio.c_cx18_av_audio_set_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i64, i32 }

@CX18_AV_AUDIO_SERIAL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_av_audio_set_path(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %5 = load %struct.cx18*, %struct.cx18** %2, align 8
  %6 = getelementptr inbounds %struct.cx18, %struct.cx18* %5, i32 0, i32 0
  store %struct.cx18_av_state* %6, %struct.cx18_av_state** %3, align 8
  %7 = load %struct.cx18*, %struct.cx18** %2, align 8
  %8 = call i32 @cx18_av_read(%struct.cx18* %7, i32 2051)
  %9 = and i32 %8, -17
  store i32 %9, i32* %4, align 4
  %10 = load %struct.cx18*, %struct.cx18** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cx18_av_write_expect(%struct.cx18* %10, i32 2051, i32 %11, i32 %12, i32 31)
  %14 = load %struct.cx18*, %struct.cx18** %2, align 8
  %15 = call i32 @cx18_av_read(%struct.cx18* %14, i32 2064)
  %16 = or i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load %struct.cx18*, %struct.cx18** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cx18_av_write_expect(%struct.cx18* %17, i32 2064, i32 %18, i32 %19, i32 15)
  %21 = load %struct.cx18*, %struct.cx18** %2, align 8
  %22 = call i32 @cx18_av_write(%struct.cx18* %21, i32 2259, i32 31)
  %23 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %24 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CX18_AV_AUDIO_SERIAL2, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.cx18*, %struct.cx18** %2, align 8
  %30 = call i32 @cx18_av_write4(%struct.cx18* %29, i32 2256, i32 16846866)
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.cx18*, %struct.cx18** %2, align 8
  %33 = call i32 @cx18_av_write4(%struct.cx18* %32, i32 2256, i32 520501360)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.cx18*, %struct.cx18** %2, align 8
  %36 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %37 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @set_audclk_freq(%struct.cx18* %35, i32 %38)
  %40 = load %struct.cx18*, %struct.cx18** %2, align 8
  %41 = call i32 @cx18_av_read(%struct.cx18* %40, i32 2064)
  %42 = and i32 %41, -2
  store i32 %42, i32* %4, align 4
  %43 = load %struct.cx18*, %struct.cx18** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cx18_av_write_expect(%struct.cx18* %43, i32 2064, i32 %44, i32 %45, i32 15)
  %47 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %48 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CX18_AV_AUDIO_SERIAL2, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %34
  %53 = load %struct.cx18*, %struct.cx18** %2, align 8
  %54 = call i32 @cx18_av_read(%struct.cx18* %53, i32 2051)
  %55 = or i32 %54, 16
  store i32 %55, i32* %4, align 4
  %56 = load %struct.cx18*, %struct.cx18** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @cx18_av_write_expect(%struct.cx18* %56, i32 2051, i32 %57, i32 %58, i32 31)
  br label %60

60:                                               ; preds = %52, %34
  ret void
}

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #1

declare dso_local i32 @set_audclk_freq(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
