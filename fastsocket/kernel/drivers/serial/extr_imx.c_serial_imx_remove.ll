; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_serial_imx_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_serial_imx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.imxuart_platform_data* }
%struct.imxuart_platform_data = type { {}* }
%struct.imx_port = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@imx_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial_imx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_imx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.imxuart_platform_data*, align 8
  %4 = alloca %struct.imx_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.imx_port* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.imx_port* %6, %struct.imx_port** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %9, align 8
  store %struct.imxuart_platform_data* %10, %struct.imxuart_platform_data** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call i32 @platform_set_drvdata(%struct.platform_device* %11, i32* null)
  %13 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %14 = icmp ne %struct.imx_port* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %17 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %16, i32 0, i32 0
  %18 = call i32 @uart_remove_one_port(i32* @imx_reg, %struct.TYPE_4__* %17)
  %19 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %20 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_put(i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %25 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable(i32 %26)
  %28 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %3, align 8
  %29 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.platform_device*)**
  %31 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.platform_device*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %3, align 8
  %35 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.platform_device*)**
  %37 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %36, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = call i32 %37(%struct.platform_device* %38)
  br label %40

40:                                               ; preds = %33, %23
  %41 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %42 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @iounmap(i32 %44)
  %46 = load %struct.imx_port*, %struct.imx_port** %4, align 8
  %47 = call i32 @kfree(%struct.imx_port* %46)
  ret i32 0
}

declare dso_local %struct.imx_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.imx_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
