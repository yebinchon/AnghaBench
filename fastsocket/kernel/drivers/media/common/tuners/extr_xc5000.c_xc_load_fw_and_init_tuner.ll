; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_load_fw_and_init_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_load_fw_and_init_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc5000_priv* }
%struct.xc5000_priv = type { i32 }

@XC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@XREG_SIGNALSOURCE = common dso_local global i32 0, align 4
@XC_RF_MODE_CABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @xc_load_fw_and_init_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_load_fw_and_init_tuner(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.xc5000_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.xc5000_priv*, %struct.xc5000_priv** %7, align 8
  store %struct.xc5000_priv* %8, %struct.xc5000_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = call i32 @xc5000_is_firmware_loaded(%struct.dvb_frontend* %9)
  %11 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = call i32 @xc5000_fwupload(%struct.dvb_frontend* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %24 = call i32 @xc_initialize(%struct.xc5000_priv* %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = call i32 @xc_wait(i32 100)
  %28 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %29 = load i32, i32* @XREG_SIGNALSOURCE, align 4
  %30 = load i32, i32* @XC_RF_MODE_CABLE, align 4
  %31 = call i32 @xc_write_reg(%struct.xc5000_priv* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @xc5000_is_firmware_loaded(%struct.dvb_frontend*) #1

declare dso_local i32 @xc5000_fwupload(%struct.dvb_frontend*) #1

declare dso_local i32 @xc_initialize(%struct.xc5000_priv*) #1

declare dso_local i32 @xc_wait(i32) #1

declare dso_local i32 @xc_write_reg(%struct.xc5000_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
