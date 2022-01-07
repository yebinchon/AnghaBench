; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk-fe.c_gp8psk_fe_send_legacy_dish_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk-fe.c_gp8psk_fe_send_legacy_dish_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.gp8psk_fe_state* }
%struct.gp8psk_fe_state = type { i32 }

@SET_DN_SWITCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SET_LNB_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @gp8psk_fe_send_legacy_dish_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_fe_send_legacy_dish_cmd(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gp8psk_fe_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %9, align 8
  store %struct.gp8psk_fe_state* %10, %struct.gp8psk_fe_state** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 127
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %6, align 8
  %15 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SET_DN_SWITCH, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @gp8psk_usb_out_op(i32 %16, i32 %17, i32 %18, i32 0, i32* null, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %6, align 8
  %26 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SET_LNB_VOLTAGE, align 4
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, 128
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @gp8psk_usb_out_op(i32 %27, i32 %28, i32 %34, i32 0, i32* null, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %37, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @gp8psk_usb_out_op(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
