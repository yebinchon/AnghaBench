; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_au8522_setup_cvbs_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_decoder.c_au8522_setup_cvbs_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { i32 }

@AU8522_MODULE_CLOCK_CONTROL_REG0A3H = common dso_local global i32 0, align 4
@AU8522_MODULE_CLOCK_CONTROL_REG0A3H_CVBS = common dso_local global i32 0, align 4
@AU8522_PGA_CONTROL_REG082H = common dso_local global i32 0, align 4
@AU8522_CLAMPING_CONTROL_REG083H = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H = common dso_local global i32 0, align 4
@AU8522_INPUT_CONTROL_REG081H_CVBS_CH1 = common dso_local global i32 0, align 4
@AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H = common dso_local global i32 0, align 4
@AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au8522_state*)* @au8522_setup_cvbs_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au8522_setup_cvbs_mode(%struct.au8522_state* %0) #0 {
  %2 = alloca %struct.au8522_state*, align 8
  store %struct.au8522_state* %0, %struct.au8522_state** %2, align 8
  %3 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %4 = load i32, i32* @AU8522_MODULE_CLOCK_CONTROL_REG0A3H, align 4
  %5 = load i32, i32* @AU8522_MODULE_CLOCK_CONTROL_REG0A3H_CVBS, align 4
  %6 = call i32 @au8522_writereg(%struct.au8522_state* %3, i32 %4, i32 %5)
  %7 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %8 = load i32, i32* @AU8522_PGA_CONTROL_REG082H, align 4
  %9 = call i32 @au8522_writereg(%struct.au8522_state* %7, i32 %8, i32 0)
  %10 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %11 = load i32, i32* @AU8522_CLAMPING_CONTROL_REG083H, align 4
  %12 = call i32 @au8522_writereg(%struct.au8522_state* %10, i32 %11, i32 0)
  %13 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %14 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H, align 4
  %15 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH1, align 4
  %16 = call i32 @au8522_writereg(%struct.au8522_state* %13, i32 %14, i32 %15)
  %17 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %18 = load i32, i32* @AU8522_INPUT_CONTROL_REG081H_CVBS_CH1, align 4
  %19 = call i32 @setup_decoder_defaults(%struct.au8522_state* %17, i32 %18)
  %20 = load %struct.au8522_state*, %struct.au8522_state** %2, align 8
  %21 = load i32, i32* @AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H, align 4
  %22 = load i32, i32* @AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H_CVBS, align 4
  %23 = call i32 @au8522_writereg(%struct.au8522_state* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

declare dso_local i32 @setup_decoder_defaults(%struct.au8522_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
