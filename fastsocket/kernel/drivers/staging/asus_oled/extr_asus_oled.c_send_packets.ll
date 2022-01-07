; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/asus_oled/extr_asus_oled.c_send_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.asus_oled_packet = type { i32 }

@ASUS_OLED_PACKET_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.asus_oled_packet*, i8*, i32, i64)* @send_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packets(%struct.usb_device* %0, %struct.asus_oled_packet* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.asus_oled_packet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.asus_oled_packet* %1, %struct.asus_oled_packet** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %64, %5
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %40 [
    i32 129, label %20
    i32 128, label %28
    i32 130, label %34
  ]

20:                                               ; preds = %18
  %21 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = call i32 @setup_packet_header(%struct.asus_oled_packet* %21, i32 64, i32 128, i32 %23, i32 %26, i32 0, i32 1, i32 255)
  br label %40

28:                                               ; preds = %18
  %29 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %7, align 8
  %30 = load i64, i64* %11, align 8
  %31 = add i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @setup_packet_header(%struct.asus_oled_packet* %29, i32 %32, i32 128, i32 1, i32 1, i32 0, i32 1, i32 0)
  br label %40

34:                                               ; preds = %18
  %35 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @setup_packet_header(%struct.asus_oled_packet* %35, i32 %38, i32 128, i32 1, i32 1, i32 0, i32 0, i32 255)
  br label %40

40:                                               ; preds = %18, %34, %28, %20
  %41 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %7, align 8
  %42 = getelementptr inbounds %struct.asus_oled_packet, %struct.asus_oled_packet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* @ASUS_OLED_PACKET_BUF_SIZE, align 8
  %46 = load i64, i64* %11, align 8
  %47 = mul i64 %45, %46
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i64, i64* @ASUS_OLED_PACKET_BUF_SIZE, align 8
  %50 = call i32 @memcpy(i32 %43, i8* %48, i64 %49)
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %53 = call i32 @usb_sndctrlpipe(%struct.usb_device* %52, i32 2)
  %54 = load %struct.asus_oled_packet*, %struct.asus_oled_packet** %7, align 8
  %55 = call i32 @usb_bulk_msg(%struct.usb_device* %51, i32 %53, %struct.asus_oled_packet* %54, i32 4, i32* %12, i32 -1)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 0
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %14

67:                                               ; preds = %14
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
