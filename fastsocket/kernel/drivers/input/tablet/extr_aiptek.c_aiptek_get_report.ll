; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_get_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_aiptek.c_aiptek_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek = type { i32, i32 }

@USB_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiptek*, i8, i8, i8*, i32)* @aiptek_get_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_get_report(%struct.aiptek* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.aiptek*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.aiptek* %0, %struct.aiptek** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.aiptek*, %struct.aiptek** %6, align 8
  %12 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.aiptek*, %struct.aiptek** %6, align 8
  %15 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_rcvctrlpipe(i32 %16, i32 0)
  %18 = load i32, i32* @USB_REQ_GET_REPORT, align 4
  %19 = load i32, i32* @USB_TYPE_CLASS, align 4
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USB_DIR_IN, align 4
  %23 = or i32 %21, %22
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %26, %28
  %30 = trunc i32 %29 to i8
  %31 = load %struct.aiptek*, %struct.aiptek** %6, align 8
  %32 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @usb_control_msg(i32 %13, i32 %17, i32 %18, i32 %23, i8 zeroext %30, i32 %33, i8* %34, i32 %35, i32 5000)
  ret i32 %36
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i8 zeroext, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
