; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gl5.c_lgs8gl5_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gl5.c_lgs8gl5_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgs8gl5_state* }
%struct.lgs8gl5_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }

@REG_INVERSION = common dso_local global i32 0, align 4
@REG_INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @lgs8gl5_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gl5_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.lgs8gl5_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_ofdm_parameters*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.lgs8gl5_state*, %struct.lgs8gl5_state** %9, align 8
  store %struct.lgs8gl5_state* %10, %struct.lgs8gl5_state** %5, align 8
  %11 = load %struct.lgs8gl5_state*, %struct.lgs8gl5_state** %5, align 8
  %12 = load i32, i32* @REG_INVERSION, align 4
  %13 = call i32 @lgs8gl5_read_reg(%struct.lgs8gl5_state* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %16, %struct.dvb_ofdm_parameters** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @REG_INVERSION_ON, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @INVERSION_ON, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @INVERSION_OFF, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @FEC_1_2, align 4
  %30 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %31 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @FEC_7_8, align 4
  %33 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %34 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %36 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %37 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %39 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %40 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @QAM_64, align 4
  %42 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %43 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @HIERARCHY_NONE, align 4
  %45 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %46 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %48 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %49 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  ret i32 0
}

declare dso_local i32 @lgs8gl5_read_reg(%struct.lgs8gl5_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
