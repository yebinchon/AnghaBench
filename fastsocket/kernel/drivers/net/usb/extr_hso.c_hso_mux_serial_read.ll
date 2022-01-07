; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_mux_serial_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_mux_serial_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, i32, i32*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CTRL_URB_RX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"ERROR: mux'd reads with multiple buffers not possible\0A\00", align 1
@USB_CDC_GET_ENCAPSULATED_RESPONSE = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_serial*)* @hso_mux_serial_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_mux_serial_read(%struct.hso_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hso_serial*, align 8
  store %struct.hso_serial* %0, %struct.hso_serial** %3, align 8
  %4 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %5 = icmp ne %struct.hso_serial* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %55

9:                                                ; preds = %1
  %10 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %11 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CTRL_URB_RX_SIZE, align 4
  %16 = call i32 @memset(i32 %14, i32 0, i32 %15)
  %17 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %18 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %9
  %22 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

29:                                               ; preds = %9
  %30 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %31 = load i32, i32* @USB_CDC_GET_ENCAPSULATED_RESPONSE, align 4
  %32 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %33 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %32, i32 0, i32 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HSO_PORT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %40 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %45 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %44, i32 0, i32 3
  %46 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hso_serial*, %struct.hso_serial** %3, align 8
  %52 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mux_device_request(%struct.hso_serial* %30, i32 %31, i32 %38, i32 %43, i32* %45, i32 %50, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %29, %21, %6
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mux_device_request(%struct.hso_serial*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
