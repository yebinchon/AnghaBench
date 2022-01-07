; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_config_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PROBE_ANY = common dso_local global i32 0, align 4
@PROBE_RSA = common dso_local global i32 0, align 4
@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@UART_CONFIG_IRQ = common dso_local global i32 0, align 4
@PORT_RSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial8250_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_config_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %5, align 8
  %10 = load i32, i32* @PROBE_ANY, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %12 = call i32 @serial8250_request_std_resource(%struct.uart_8250_port* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %87

16:                                               ; preds = %2
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %18 = call i32 @serial8250_request_rsa_resource(%struct.uart_8250_port* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @PROBE_RSA, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %28 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %32 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = call i32 @set_io_from_upio(%struct.uart_port* %36)
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @UART_CONFIG_TYPE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @autoconfig(%struct.uart_8250_port* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %49 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PORT_UNKNOWN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @UART_CONFIG_IRQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %61 = call i32 @autoconfig_irq(%struct.uart_8250_port* %60)
  br label %62

62:                                               ; preds = %59, %54, %47
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PORT_RSA, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @PROBE_RSA, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %76 = call i32 @serial8250_release_rsa_resource(%struct.uart_8250_port* %75)
  br label %77

77:                                               ; preds = %74, %69, %62
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PORT_UNKNOWN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %86 = call i32 @serial8250_release_std_resource(%struct.uart_8250_port* %85)
  br label %87

87:                                               ; preds = %15, %84, %77
  ret void
}

declare dso_local i32 @serial8250_request_std_resource(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_request_rsa_resource(%struct.uart_8250_port*) #1

declare dso_local i32 @set_io_from_upio(%struct.uart_port*) #1

declare dso_local i32 @autoconfig(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @autoconfig_irq(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_release_rsa_resource(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_release_std_resource(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
