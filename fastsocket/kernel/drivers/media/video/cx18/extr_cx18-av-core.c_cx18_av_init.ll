; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }

@CXADEC_PLL_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_VID_PLL_FRAC = common dso_local global i32 0, align 4
@CXADEC_AUX_PLL_FRAC = common dso_local global i32 0, align 4
@CXADEC_I2S_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_av_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_av_init(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %3 = load %struct.cx18*, %struct.cx18** %2, align 8
  %4 = load i32, i32* @CXADEC_PLL_CTRL1, align 4
  %5 = call i32 @cx18_av_write4(%struct.cx18* %3, i32 %4, i32 370017295)
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = load i32, i32* @CXADEC_VID_PLL_FRAC, align 4
  %8 = call i32 @cx18_av_write4(%struct.cx18* %6, i32 %7, i32 2876158)
  %9 = load %struct.cx18*, %struct.cx18** %2, align 8
  %10 = load i32, i32* @CXADEC_AUX_PLL_FRAC, align 4
  %11 = call i32 @cx18_av_write4(%struct.cx18* %9, i32 %10, i32 5384109)
  %12 = load %struct.cx18*, %struct.cx18** %2, align 8
  %13 = load i32, i32* @CXADEC_I2S_MCLK, align 4
  %14 = call i32 @cx18_av_write(%struct.cx18* %12, i32 %13, i32 86)
  ret void
}

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
