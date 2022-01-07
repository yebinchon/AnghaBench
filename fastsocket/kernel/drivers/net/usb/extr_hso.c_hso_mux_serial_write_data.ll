; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_mux_serial_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_mux_serial_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_CDC_SEND_ENCAPSULATED_COMMAND = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_serial*)* @hso_mux_serial_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_mux_serial_write_data(%struct.hso_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_serial*, align 8
  store %struct.hso_serial* %0, %struct.hso_serial** %3, align 8
  %4 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %5 = icmp eq %struct.hso_serial* null, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %11 = load i32, i32* @USB_CDC_SEND_ENCAPSULATED_COMMAND, align 4
  %12 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %13 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HSO_PORT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %20 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 2
  %24 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %25 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %28 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mux_device_request(%struct.hso_serial* %10, i32 %11, i32 %18, i32 %21, i32* %23, i32 %26, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %9, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mux_device_request(%struct.hso_serial*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
