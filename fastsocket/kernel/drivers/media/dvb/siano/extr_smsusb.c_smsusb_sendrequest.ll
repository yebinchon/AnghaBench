; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_sendrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smsusb.c_smsusb_sendrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsusb_device_t = type { i32 }
%struct.SmsMsgHdr_ST = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @smsusb_sendrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb_sendrequest(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smsusb_device_t*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.smsusb_device_t*
  store %struct.smsusb_device_t* %10, %struct.smsusb_device_t** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.SmsMsgHdr_ST*
  %13 = call i32 @smsendian_handle_message_header(%struct.SmsMsgHdr_ST* %12)
  %14 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %15 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.smsusb_device_t*, %struct.smsusb_device_t** %7, align 8
  %18 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_sndbulkpipe(i32 %19, i32 2)
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @usb_bulk_msg(i32 %16, i32 %20, i8* %21, i64 %22, i32* %8, i32 1000)
  ret i32 %23
}

declare dso_local i32 @smsendian_handle_message_header(%struct.SmsMsgHdr_ST*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i64, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
