; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_led_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32 }

@dvb_usb_af9005_led = common dso_local global i64 0, align 8
@xd_p_reg_top_locken1 = common dso_local global i32 0, align 4
@reg_top_locken1_pos = common dso_local global i32 0, align 4
@reg_top_locken1_len = common dso_local global i32 0, align 4
@xd_p_reg_top_lock1 = common dso_local global i32 0, align 4
@reg_top_lock1_pos = common dso_local global i32 0, align 4
@reg_top_lock1_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_led_control(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.af9005_device_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 0
  %11 = load %struct.af9005_device_state*, %struct.af9005_device_state** %10, align 8
  store %struct.af9005_device_state* %11, %struct.af9005_device_state** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* @dvb_usb_af9005_led, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %19

18:                                               ; preds = %14, %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.af9005_device_state*, %struct.af9005_device_state** %6, align 8
  %21 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %27 = load i32, i32* @xd_p_reg_top_locken1, align 4
  %28 = load i32, i32* @reg_top_locken1_pos, align 4
  %29 = load i32, i32* @reg_top_locken1_len, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @af9005_write_register_bits(%struct.dvb_usb_device* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %25
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %38 = load i32, i32* @xd_p_reg_top_lock1, align 4
  %39 = load i32, i32* @reg_top_lock1_pos, align 4
  %40 = load i32, i32* @reg_top_lock1_len, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @af9005_write_register_bits(%struct.dvb_usb_device* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.af9005_device_state*, %struct.af9005_device_state** %6, align 8
  %50 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %19
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %45, %34
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @af9005_write_register_bits(%struct.dvb_usb_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
