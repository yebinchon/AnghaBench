; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @cxusb_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br label %23

23:                                               ; preds = %20, %6
  %24 = phi i1 [ true, %6 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 1, %26
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 1, %31
  %33 = call i32 @memset(i32* %30, i32 0, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds i32, i32* %30, i64 1
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @memcpy(i32* %36, i32* %37, i32 %38)
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 1, %44
  %46 = call i32 @dvb_usb_generic_write(%struct.dvb_usb_device* %43, i32* %30, i32 %45)
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %54

47:                                               ; preds = %23
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 1, %49
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %48, i32* %30, i32 %50, i32* %51, i32 %52, i32 0)
  store i32 %53, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @dvb_usb_generic_write(%struct.dvb_usb_device*, i32*, i32) #2

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
