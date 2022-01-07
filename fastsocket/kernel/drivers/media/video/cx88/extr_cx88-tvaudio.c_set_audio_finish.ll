; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_set_audio_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-tvaudio.c_set_audio_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AUD_RATE_THRES_DMD = common dso_local global i32 0, align 4
@CX88_MPEG_BLACKBIRD = common dso_local global i32 0, align 4
@AUD_I2SINPUTCNTL = common dso_local global i32 0, align 4
@AUD_BAUDRATE = common dso_local global i32 0, align 4
@AUD_CTL = common dso_local global i32 0, align 4
@EN_I2SOUT_ENABLE = common dso_local global i32 0, align 4
@AUD_I2SOUTPUTCNTL = common dso_local global i32 0, align 4
@AUD_I2SCNTL = common dso_local global i32 0, align 4
@always_analog = common dso_local global i64 0, align 8
@EN_DAC_ENABLE = common dso_local global i32 0, align 4
@AUD_SOFT_RESET = common dso_local global i32 0, align 4
@SHADOW_AUD_VOL_CTL = common dso_local global i32 0, align 4
@AUD_VOL_CTL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i32)* @set_audio_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_audio_finish(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %7 = call i32 @cx88_stop_audio_dma(%struct.cx88_core* %6)
  %8 = load i32, i32* @AUD_RATE_THRES_DMD, align 4
  %9 = call i32 @cx_write(i32 %8, i32 192)
  %10 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %11 = call i32 @cx88_start_audio_dma(%struct.cx88_core* %10)
  %12 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %13 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CX88_MPEG_BLACKBIRD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @AUD_I2SINPUTCNTL, align 4
  %21 = call i32 @cx_write(i32 %20, i32 4)
  %22 = load i32, i32* @AUD_BAUDRATE, align 4
  %23 = call i32 @cx_write(i32 %22, i32 1)
  %24 = load i32, i32* @AUD_CTL, align 4
  %25 = load i32, i32* @EN_I2SOUT_ENABLE, align 4
  %26 = call i32 @cx_set(i32 %24, i32 %25)
  %27 = load i32, i32* @AUD_I2SOUTPUTCNTL, align 4
  %28 = call i32 @cx_write(i32 %27, i32 1)
  %29 = load i32, i32* @AUD_I2SCNTL, align 4
  %30 = call i32 @cx_write(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %19, %2
  %32 = load i64, i64* @always_analog, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %36 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CX88_MPEG_BLACKBIRD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* @EN_DAC_ENABLE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @AUD_CTL, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cx_write(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %34
  %50 = load i32, i32* @AUD_SOFT_RESET, align 4
  %51 = call i32 @cx_write(i32 %50, i32 0)
  %52 = load i32, i32* @SHADOW_AUD_VOL_CTL, align 4
  %53 = call i32 @cx_sread(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @SHADOW_AUD_VOL_CTL, align 4
  %55 = load i32, i32* @AUD_VOL_CTL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cx_swrite(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @jiffies, align 4
  %59 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %60 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @cx88_stop_audio_dma(%struct.cx88_core*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx88_start_audio_dma(%struct.cx88_core*) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_sread(i32) #1

declare dso_local i32 @cx_swrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
