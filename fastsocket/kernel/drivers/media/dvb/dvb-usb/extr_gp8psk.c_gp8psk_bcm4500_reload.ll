; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_bcm4500_reload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_bcm4500_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BOOT_8PSK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_PID_GENPIX_8PSK_REV_1_WARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp8psk_bcm4500_reload(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = load i32, i32* @BOOT_8PSK, align 4
  %15 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %13, i32 %14, i32 0, i32 0, i32* %4, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %22 = load i32, i32* @BOOT_8PSK, align 4
  %23 = call i64 @gp8psk_usb_in_op(%struct.dvb_usb_device* %21, i32 %22, i32 1, i32 0, i32* %4, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @USB_PID_GENPIX_8PSK_REV_1_WARM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %34 = call i64 @gp8psk_load_bcm4500fw(%struct.dvb_usb_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %28
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36, %25, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @gp8psk_usb_in_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @gp8psk_load_bcm4500fw(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
