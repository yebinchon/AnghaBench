; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_alt_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_alt_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_host_endpoint* (%struct.usb_host_interface*, i32)* @alt_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_host_endpoint* @alt_xfer(%struct.usb_host_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_host_endpoint*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %41, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %9
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 0
  %19 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %19, i64 %21
  store %struct.usb_host_endpoint* %22, %struct.usb_host_endpoint** %6, align 8
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  store %struct.usb_host_endpoint* %39, %struct.usb_host_endpoint** %3, align 8
  br label %45

40:                                               ; preds = %32, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %9

44:                                               ; preds = %9
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %3, align 8
  ret %struct.usb_host_endpoint* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
