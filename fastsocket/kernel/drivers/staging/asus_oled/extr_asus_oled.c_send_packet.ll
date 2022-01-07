; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.asus_oled_packet = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.asus_oled_packet*, i64, i64, i8*, i32, i32, i32, i32, i32, i32)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packet(%struct.usb_device* %0, %struct.asus_oled_packet* %1, i64 %2, i64 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.asus_oled_packet*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %12, align 8
  store %struct.asus_oled_packet* %1, %struct.asus_oled_packet** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %13, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* %20, align 4
  %30 = load i32, i32* %21, align 4
  %31 = load i32, i32* %22, align 4
  %32 = call i32 @setup_packet_header(%struct.asus_oled_packet* %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 0)
  %33 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %13, align 8
  %34 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @memcpy(i32 %35, i8* %38, i64 %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %43 = call i32 @usb_sndctrlpipe(%struct.usb_device* %42, i32 2)
  %44 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %13, align 8
  %45 = call i32 @usb_bulk_msg(%struct.usb_device* %41, i32 %43, %struct.asus_oled_packet* %44, i32 4, i32* %24, i32 -1)
  store i32 %45, i32* %23, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %11
  %49 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = load i32, i32* %23, align 4
  %52 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @setup_packet_header(%struct.asus_oled_packet*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, %struct.asus_oled_packet*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
