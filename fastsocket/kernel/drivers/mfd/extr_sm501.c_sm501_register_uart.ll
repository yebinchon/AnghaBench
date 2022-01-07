; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_register_uart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_register_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.plat_serial8250_port* }
%struct.plat_serial8250_port = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"serial8250\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SM501_USE_UART0 = common dso_local global i32 0, align 4
@SM501_GATE_UART0 = common dso_local global i32 0, align 4
@SM501_IRQ_MASK = common dso_local global i32 0, align 4
@SM501_GPIO63_32_CONTROL = common dso_local global i32 0, align 4
@SM501_USE_UART1 = common dso_local global i32 0, align 4
@SM501_GATE_UART1 = common dso_local global i32 0, align 4
@PLAT8250_DEV_SM501 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501_devdata*, i32)* @sm501_register_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_register_uart(%struct.sm501_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.plat_serial8250_port*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %9 = call %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 12)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %18, align 8
  store %struct.plat_serial8250_port* %19, %struct.plat_serial8250_port** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SM501_USE_UART0, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %15
  %25 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %26 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %7, align 8
  %27 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %26, i32 1
  store %struct.plat_serial8250_port* %27, %struct.plat_serial8250_port** %7, align 8
  %28 = ptrtoint %struct.plat_serial8250_port* %26 to i32
  %29 = call i32 @sm501_setup_uart_data(%struct.sm501_devdata* %25, i32 %28, i32 196608)
  %30 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %31 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SM501_GATE_UART0, align 4
  %34 = call i32 @sm501_unit_power(i32 %32, i32 %33, i32 1)
  %35 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %36 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SM501_IRQ_MASK, align 4
  %39 = call i32 @sm501_modify_reg(i32 %37, i32 %38, i32 4096, i32 0)
  %40 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %41 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SM501_GPIO63_32_CONTROL, align 4
  %44 = call i32 @sm501_modify_reg(i32 %42, i32 %43, i32 480, i32 0)
  br label %45

45:                                               ; preds = %24, %15
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SM501_USE_UART1, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %52 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %7, align 8
  %53 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %52, i32 1
  store %struct.plat_serial8250_port* %53, %struct.plat_serial8250_port** %7, align 8
  %54 = ptrtoint %struct.plat_serial8250_port* %52 to i32
  %55 = call i32 @sm501_setup_uart_data(%struct.sm501_devdata* %51, i32 %54, i32 196640)
  %56 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %57 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SM501_GATE_UART1, align 4
  %60 = call i32 @sm501_unit_power(i32 %58, i32 %59, i32 1)
  %61 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %62 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SM501_IRQ_MASK, align 4
  %65 = call i32 @sm501_modify_reg(i32 %63, i32 %64, i32 8192, i32 0)
  %66 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %67 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SM501_GPIO63_32_CONTROL, align 4
  %70 = call i32 @sm501_modify_reg(i32 %68, i32 %69, i32 7680, i32 0)
  br label %71

71:                                               ; preds = %50, %45
  %72 = load i32, i32* @PLAT8250_DEV_SM501, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %77 = call i32 @sm501_register_device(%struct.sm501_devdata* %75, %struct.platform_device* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata*, i8*, i32, i32) #1

declare dso_local i32 @sm501_setup_uart_data(%struct.sm501_devdata*, i32, i32) #1

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

declare dso_local i32 @sm501_modify_reg(i32, i32, i32, i32) #1

declare dso_local i32 @sm501_register_device(%struct.sm501_devdata*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
