; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_umt-010.c_umt_mt352_demod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_umt-010.c_umt_mt352_demod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@umt_mt352_demod_init.mt352_clock_config = internal global [3 x i32] [i32 137, i32 184, i32 45], align 4
@umt_mt352_demod_init.mt352_reset = internal global [2 x i32] [i32 80, i32 128], align 4
@umt_mt352_demod_init.mt352_mclk_ratio = internal global [2 x i32] [i32 139, i32 0], align 4
@umt_mt352_demod_init.mt352_adc_ctl_1_cfg = internal global [2 x i32] [i32 142, i32 64], align 4
@umt_mt352_demod_init.mt352_agc_cfg = internal global [3 x i32] [i32 103, i32 16, i32 160], align 4
@umt_mt352_demod_init.mt352_sec_agc_cfg1 = internal global [2 x i32] [i32 106, i32 255], align 4
@umt_mt352_demod_init.mt352_sec_agc_cfg2 = internal global [2 x i32] [i32 109, i32 255], align 4
@umt_mt352_demod_init.mt352_sec_agc_cfg3 = internal global [2 x i32] [i32 112, i32 64], align 4
@umt_mt352_demod_init.mt352_sec_agc_cfg4 = internal global [2 x i32] [i32 123, i32 3], align 4
@umt_mt352_demod_init.mt352_sec_agc_cfg5 = internal global [2 x i32] [i32 125, i32 15], align 4
@umt_mt352_demod_init.mt352_acq_ctl = internal global [2 x i32] [i32 83, i32 80], align 4
@umt_mt352_demod_init.mt352_input_freq_1 = internal global [3 x i32] [i32 86, i32 49, i32 6], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @umt_mt352_demod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umt_mt352_demod_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %4 = call i32 @mt352_write(%struct.dvb_frontend* %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @umt_mt352_demod_init.mt352_clock_config, i64 0, i64 0), i32 12)
  %5 = call i32 @udelay(i32 2000)
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = call i32 @mt352_write(%struct.dvb_frontend* %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_reset, i64 0, i64 0), i32 8)
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = call i32 @mt352_write(%struct.dvb_frontend* %8, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_mclk_ratio, i64 0, i64 0), i32 8)
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = call i32 @mt352_write(%struct.dvb_frontend* %10, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_adc_ctl_1_cfg, i64 0, i64 0), i32 8)
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = call i32 @mt352_write(%struct.dvb_frontend* %12, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @umt_mt352_demod_init.mt352_agc_cfg, i64 0, i64 0), i32 12)
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %15 = call i32 @mt352_write(%struct.dvb_frontend* %14, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_sec_agc_cfg1, i64 0, i64 0), i32 8)
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = call i32 @mt352_write(%struct.dvb_frontend* %16, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_sec_agc_cfg2, i64 0, i64 0), i32 8)
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = call i32 @mt352_write(%struct.dvb_frontend* %18, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_sec_agc_cfg3, i64 0, i64 0), i32 8)
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %21 = call i32 @mt352_write(%struct.dvb_frontend* %20, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_sec_agc_cfg4, i64 0, i64 0), i32 8)
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %23 = call i32 @mt352_write(%struct.dvb_frontend* %22, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_sec_agc_cfg5, i64 0, i64 0), i32 8)
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %25 = call i32 @mt352_write(%struct.dvb_frontend* %24, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @umt_mt352_demod_init.mt352_acq_ctl, i64 0, i64 0), i32 8)
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %27 = call i32 @mt352_write(%struct.dvb_frontend* %26, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @umt_mt352_demod_init.mt352_input_freq_1, i64 0, i64 0), i32 12)
  ret i32 0
}

declare dso_local i32 @mt352_write(%struct.dvb_frontend*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
