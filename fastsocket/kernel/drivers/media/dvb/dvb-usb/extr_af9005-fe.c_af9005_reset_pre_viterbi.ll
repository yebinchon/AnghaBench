; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_reset_pre_viterbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_reset_pre_viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i32 }

@xd_p_fec_super_frm_unit_7_0 = common dso_local global i32 0, align 4
@xd_p_fec_super_frm_unit_15_8 = common dso_local global i32 0, align 4
@xd_p_fec_vtb_ber_rst = common dso_local global i32 0, align 4
@fec_vtb_ber_rst_pos = common dso_local global i32 0, align 4
@fec_vtb_ber_rst_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9005_reset_pre_viterbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_reset_pre_viterbi(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9005_fe_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %7, align 8
  store %struct.af9005_fe_state* %8, %struct.af9005_fe_state** %4, align 8
  %9 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %10 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @xd_p_fec_super_frm_unit_7_0, align 4
  %13 = call i32 @af9005_write_ofdm_register(i32 %11, i32 %12, i32 1)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %20 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @xd_p_fec_super_frm_unit_15_8, align 4
  %23 = call i32 @af9005_write_ofdm_register(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %4, align 8
  %30 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @xd_p_fec_vtb_ber_rst, align 4
  %33 = load i32, i32* @fec_vtb_ber_rst_pos, align 4
  %34 = load i32, i32* @fec_vtb_ber_rst_len, align 4
  %35 = call i32 @af9005_write_register_bits(i32 %31, i32 %32, i32 %33, i32 %34, i32 1)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %26, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @af9005_write_ofdm_register(i32, i32, i32) #1

declare dso_local i32 @af9005_write_register_bits(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
