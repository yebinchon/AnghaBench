; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_is_fecmon_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_is_fecmon_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.af9005_fe_state* }
%struct.af9005_fe_state = type { i32 }

@xd_p_fec_vtb_rsd_mon_en = common dso_local global i32 0, align 4
@fec_vtb_rsd_mon_en_pos = common dso_local global i32 0, align 4
@fec_vtb_rsd_mon_en_len = common dso_local global i32 0, align 4
@xd_p_reg_ofsm_read_rbc_en = common dso_local global i32 0, align 4
@reg_ofsm_read_rbc_en_pos = common dso_local global i32 0, align 4
@reg_ofsm_read_rbc_en_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @af9005_is_fecmon_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_is_fecmon_available(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.af9005_fe_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %10, align 8
  store %struct.af9005_fe_state* %11, %struct.af9005_fe_state** %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %14 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @xd_p_fec_vtb_rsd_mon_en, align 4
  %17 = load i32, i32* @fec_vtb_rsd_mon_en_pos, align 4
  %18 = load i32, i32* @fec_vtb_rsd_mon_en_len, align 4
  %19 = call i32 @af9005_read_register_bits(i32 %15, i32 %16, i32 %17, i32 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.af9005_fe_state*, %struct.af9005_fe_state** %6, align 8
  %30 = getelementptr inbounds %struct.af9005_fe_state, %struct.af9005_fe_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @xd_p_reg_ofsm_read_rbc_en, align 4
  %33 = load i32, i32* @reg_ofsm_read_rbc_en_pos, align 4
  %34 = load i32, i32* @reg_ofsm_read_rbc_en_len, align 4
  %35 = call i32 @af9005_read_register_bits(i32 %31, i32 %32, i32 %33, i32 %34, i32* %8)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %24
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %38, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @af9005_read_register_bits(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
