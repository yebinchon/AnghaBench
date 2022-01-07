; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_timbuart.c_timbuart_request_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_timbuart.c_timbuart_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32*, i32 }
%struct.platform_device = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"timb-uart\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @timbuart_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timbuart_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call i32 @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  %13 = call i32 @resource_size(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @request_mem_region(i32 %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UPF_IOREMAP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %23
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @ioremap(i32 %33, i32 %34)
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @release_mem_region(i32 %45, i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %23
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %42, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @resource_size(i32) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
