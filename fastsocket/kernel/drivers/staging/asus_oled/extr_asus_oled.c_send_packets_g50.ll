; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_packets_g50.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_packets_g50.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.asus_oled_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.asus_oled_packet*, i8*)* @send_packets_g50 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packets_g50(%struct.usb_device* %0, %struct.asus_oled_packet* %1, i8* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.asus_oled_packet*, align 8
  %6 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.asus_oled_packet* %1, %struct.asus_oled_packet** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @send_packet(%struct.usb_device* %7, %struct.asus_oled_packet* %8, i32 0, i32 256, i8* %9, i32 16, i32 0, i32 2, i32 1, i32 0, i32 1)
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @send_packet(%struct.usb_device* %11, %struct.asus_oled_packet* %12, i32 256, i32 128, i8* %13, i32 16, i32 0, i32 2, i32 2, i32 128, i32 0)
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @send_packet(%struct.usb_device* %15, %struct.asus_oled_packet* %16, i32 384, i32 256, i8* %17, i32 17, i32 0, i32 3, i32 1, i32 0, i32 1)
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @send_packet(%struct.usb_device* %19, %struct.asus_oled_packet* %20, i32 640, i32 256, i8* %21, i32 17, i32 0, i32 3, i32 2, i32 0, i32 1)
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @send_packet(%struct.usb_device* %23, %struct.asus_oled_packet* %24, i32 896, i32 128, i8* %25, i32 17, i32 0, i32 3, i32 3, i32 128, i32 0)
  ret void
}

declare dso_local i32 @send_packet(%struct.usb_device*, %struct.asus_oled_packet*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
