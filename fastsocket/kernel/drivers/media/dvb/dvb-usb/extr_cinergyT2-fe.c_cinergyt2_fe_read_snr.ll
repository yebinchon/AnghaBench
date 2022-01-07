; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-fe.c_cinergyt2_fe_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cinergyt2_fe_state* }
%struct.cinergyt2_fe_state = type { i32 }
%struct.dvbt_get_status_msg = type { i32 }

@CINERGYT2_EP1_GET_TUNER_STATUS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [44 x i8] c"cinergyt2_fe_read_snr() Failed! (Error=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @cinergyt2_fe_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinergyt2_fe_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cinergyt2_fe_state*, align 8
  %7 = alloca %struct.dvbt_get_status_msg, align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %11, align 8
  store %struct.cinergyt2_fe_state* %12, %struct.cinergyt2_fe_state** %6, align 8
  %13 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  %14 = load i8, i8* @CINERGYT2_EP1_GET_TUNER_STATUS, align 1
  store i8 %14, i8* %13, align 1
  %15 = load %struct.cinergyt2_fe_state*, %struct.cinergyt2_fe_state** %6, align 8
  %16 = getelementptr inbounds %struct.cinergyt2_fe_state, %struct.cinergyt2_fe_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  %19 = bitcast %struct.dvbt_get_status_msg* %7 to i8*
  %20 = call i32 @dvb_usb_generic_rw(i32 %17, i8* %18, i32 1, i8* %19, i32 4, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = getelementptr inbounds %struct.dvbt_get_status_msg, %struct.dvbt_get_status_msg* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %30, %32
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @dvb_usb_generic_rw(i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
