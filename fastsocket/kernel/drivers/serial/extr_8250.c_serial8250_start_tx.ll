; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32, i32, i8, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_BUG_TXEN = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@LSR_SAVE_FLAGS = common dso_local global i8 0, align 1
@PORT_RM9000 = common dso_local global i64 0, align 8
@UART_LSR_THRE = common dso_local global i8 0, align 1
@UART_LSR_TEMT = common dso_local global i8 0, align 1
@PORT_16C950 = common dso_local global i64 0, align 8
@UART_ACR_TXDIS = common dso_local global i32 0, align 4
@UART_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial8250_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %6, %struct.uart_8250_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @UART_IER_THRI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @UART_IER_THRI, align 4
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %20 = load i32, i32* @UART_IER, align 4
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @serial_out(%struct.uart_8250_port* %19, i32 %20, i32 %23)
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UART_BUG_TXEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %13
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %33 = load i32, i32* @UART_LSR, align 4
  %34 = call zeroext i8 @serial_in(%struct.uart_8250_port* %32, i32 %33)
  store i8 %34, i8* %4, align 1
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @LSR_SAVE_FLAGS, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %40, i32 0, i32 2
  %42 = load i8, i8* %41, align 8
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %39
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 8
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PORT_RM9000, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %31
  %53 = load i8, i8* %4, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* @UART_LSR_THRE, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %69

59:                                               ; preds = %31
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @UART_LSR_TEMT, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59, %52
  %67 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %68 = call i32 @transmit_chars(%struct.uart_8250_port* %67)
  br label %69

69:                                               ; preds = %66, %59, %52
  br label %70

70:                                               ; preds = %69, %13
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %73 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PORT_16C950, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %71
  %79 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UART_ACR_TXDIS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load i32, i32* @UART_ACR_TXDIS, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %93 = load i32, i32* @UART_ACR, align 4
  %94 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %95 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @serial_icr_write(%struct.uart_8250_port* %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %85, %78, %71
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @transmit_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_icr_write(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
