; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_mux_serial_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_mux_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32, %struct.hso_shared_int*, i32, i32, %struct.hso_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hso_serial* }
%struct.hso_serial = type { i32, %struct.hso_shared_int*, i32, i32, %struct.hso_serial*, %struct.TYPE_2__ }
%struct.usb_interface = type { i32 }
%struct.hso_shared_int = type { i32, i32 }

@HSO_INTF_MUX = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@HSO_PORT_NO_PORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CTRL_URB_RX_SIZE = common dso_local global i32 0, align 4
@CTRL_URB_TX_SIZE = common dso_local global i32 0, align 4
@hso_mux_serial_write_data = common dso_local global i32 0, align 4
@tty_drv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_device* (%struct.usb_interface*, i32, %struct.hso_shared_int*)* @hso_create_mux_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_device* @hso_create_mux_serial_device(%struct.usb_interface* %0, i32 %1, %struct.hso_shared_int* %2) #0 {
  %4 = alloca %struct.hso_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hso_shared_int*, align 8
  %8 = alloca %struct.hso_device*, align 8
  %9 = alloca %struct.hso_serial*, align 8
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hso_shared_int* %2, %struct.hso_shared_int** %7, align 8
  %11 = load i32, i32* @HSO_INTF_MUX, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @HSO_PORT_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %10, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @hso_mux_to_port(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @HSO_PORT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @HSO_PORT_NO_PORT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.hso_device* null, %struct.hso_device** %4, align 8
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.hso_serial* @hso_create_device(%struct.usb_interface* %27, i32 %28)
  %30 = bitcast %struct.hso_serial* %29 to %struct.hso_device*
  store %struct.hso_device* %30, %struct.hso_device** %8, align 8
  %31 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %32 = icmp ne %struct.hso_device* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store %struct.hso_device* null, %struct.hso_device** %4, align 8
  br label %110

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.hso_serial* @kzalloc(i32 40, i32 %35)
  store %struct.hso_serial* %36, %struct.hso_serial** %9, align 8
  %37 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %38 = icmp ne %struct.hso_serial* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %91

40:                                               ; preds = %34
  %41 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %42 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %43 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.hso_serial* %41, %struct.hso_serial** %44, align 8
  %45 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %46 = bitcast %struct.hso_device* %45 to %struct.hso_serial*
  %47 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %48 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %47, i32 0, i32 4
  store %struct.hso_serial* %46, %struct.hso_serial** %48, align 8
  %49 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %50 = load i32, i32* @CTRL_URB_RX_SIZE, align 4
  %51 = load i32, i32* @CTRL_URB_TX_SIZE, align 4
  %52 = call i64 @hso_serial_common_create(%struct.hso_serial* %49, i32 1, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %91

55:                                               ; preds = %40
  %56 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %57 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @hso_mux_serial_write_data, align 4
  %61 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %62 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hso_shared_int*, %struct.hso_shared_int** %7, align 8
  %64 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %65 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %64, i32 0, i32 1
  store %struct.hso_shared_int* %63, %struct.hso_shared_int** %65, align 8
  %66 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %67 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %66, i32 0, i32 1
  %68 = load %struct.hso_shared_int*, %struct.hso_shared_int** %67, align 8
  %69 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %72 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %71, i32 0, i32 1
  %73 = load %struct.hso_shared_int*, %struct.hso_shared_int** %72, align 8
  %74 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %78 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %77, i32 0, i32 1
  %79 = load %struct.hso_shared_int*, %struct.hso_shared_int** %78, align 8
  %80 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %83 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %86 = call i32 @set_serial_by_index(i32 %84, %struct.hso_serial* %85)
  %87 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %88 = bitcast %struct.hso_device* %87 to %struct.hso_serial*
  %89 = call i32 @hso_log_port(%struct.hso_serial* %88)
  %90 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  store %struct.hso_device* %90, %struct.hso_device** %4, align 8
  br label %110

91:                                               ; preds = %54, %39
  %92 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %93 = icmp ne %struct.hso_serial* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load i32, i32* @tty_drv, align 4
  %96 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %97 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @tty_unregister_device(i32 %95, i32 %98)
  %100 = load %struct.hso_serial*, %struct.hso_serial** %9, align 8
  %101 = call i32 @kfree(%struct.hso_serial* %100)
  br label %102

102:                                              ; preds = %94, %91
  %103 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %104 = icmp ne %struct.hso_device* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %107 = bitcast %struct.hso_device* %106 to %struct.hso_serial*
  %108 = call i32 @kfree(%struct.hso_serial* %107)
  br label %109

109:                                              ; preds = %105, %102
  store %struct.hso_device* null, %struct.hso_device** %4, align 8
  br label %110

110:                                              ; preds = %109, %55, %33, %25
  %111 = load %struct.hso_device*, %struct.hso_device** %4, align 8
  ret %struct.hso_device* %111
}

declare dso_local i32 @hso_mux_to_port(i32) #1

declare dso_local %struct.hso_serial* @hso_create_device(%struct.usb_interface*, i32) #1

declare dso_local %struct.hso_serial* @kzalloc(i32, i32) #1

declare dso_local i64 @hso_serial_common_create(%struct.hso_serial*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_serial_by_index(i32, %struct.hso_serial*) #1

declare dso_local i32 @hso_log_port(%struct.hso_serial*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @kfree(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
