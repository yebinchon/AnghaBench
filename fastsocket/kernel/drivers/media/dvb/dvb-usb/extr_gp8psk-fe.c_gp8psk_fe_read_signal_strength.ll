; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk-fe.c_gp8psk_fe_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk-fe.c_gp8psk_fe_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.gp8psk_fe_state* }
%struct.gp8psk_fe_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @gp8psk_fe_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_fe_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gp8psk_fe_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %7, align 8
  store %struct.gp8psk_fe_state* %8, %struct.gp8psk_fe_state** %5, align 8
  %9 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %10 = call i32 @gp8psk_fe_update_status(%struct.gp8psk_fe_state* %9)
  %11 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %12 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 3840
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  store i32 65535, i32* %16, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %19 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 4
  %22 = load %struct.gp8psk_fe_state*, %struct.gp8psk_fe_state** %5, align 8
  %23 = getelementptr inbounds %struct.gp8psk_fe_state, %struct.gp8psk_fe_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %17, %15
  ret i32 0
}

declare dso_local i32 @gp8psk_fe_update_status(%struct.gp8psk_fe_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
