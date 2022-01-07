; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-fw.c_i2400mu_notif_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb-fw.c_i2400mu_notif_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i32, %struct.i2400m }
%struct.i2400m = type { i32 }
%struct.urb = type { i32 }
%struct.completion = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }

@I2400MU_EP_NOTIFICATION = common dso_local global i32 0, align 4
@I2400M_BM_ACK_BUF_SIZE = common dso_local global i32 0, align 4
@__i2400mu_bm_notif_cb = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400mu*, %struct.urb*, %struct.completion*)* @i2400mu_notif_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_notif_submit(%struct.i2400mu* %0, %struct.urb* %1, %struct.completion* %2) #0 {
  %4 = alloca %struct.i2400mu*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.completion*, align 8
  %7 = alloca %struct.i2400m*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  store %struct.i2400mu* %0, %struct.i2400mu** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.completion* %2, %struct.completion** %6, align 8
  %10 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %11 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %10, i32 0, i32 2
  store %struct.i2400m* %11, %struct.i2400m** %7, align 8
  %12 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %13 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2400MU_EP_NOTIFICATION, align 4
  %16 = call %struct.usb_endpoint_descriptor* @usb_get_epd(i32 %14, i32 %15)
  store %struct.usb_endpoint_descriptor* %16, %struct.usb_endpoint_descriptor** %8, align 8
  %17 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %18 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %21 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_rcvintpipe(i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.urb*, %struct.urb** %5, align 8
  %25 = load %struct.i2400mu*, %struct.i2400mu** %4, align 8
  %26 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.i2400m*, %struct.i2400m** %7, align 8
  %30 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2400M_BM_ACK_BUF_SIZE, align 4
  %33 = load i32, i32* @__i2400mu_bm_notif_cb, align 4
  %34 = load %struct.completion*, %struct.completion** %6, align 8
  %35 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_fill_int_urb(%struct.urb* %24, i32 %27, i32 %28, i32 %31, i32 %32, i32 %33, %struct.completion* %34, i32 %37)
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @usb_submit_urb(%struct.urb* %39, i32 %40)
  ret i32 %41
}

declare dso_local %struct.usb_endpoint_descriptor* @usb_get_epd(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.completion*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
