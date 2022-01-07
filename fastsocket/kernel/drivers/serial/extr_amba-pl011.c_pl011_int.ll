; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@AMBA_ISR_PASS_LIMIT = common dso_local global i32 0, align 4
@UART011_MIS = common dso_local global i64 0, align 8
@UART011_TXIS = common dso_local global i32 0, align 4
@UART011_RTIS = common dso_local global i32 0, align 4
@UART011_RXIS = common dso_local global i32 0, align 4
@UART011_ICR = common dso_local global i64 0, align 8
@UART011_DSRMIS = common dso_local global i32 0, align 4
@UART011_DCDMIS = common dso_local global i32 0, align 4
@UART011_CTSMIS = common dso_local global i32 0, align 4
@UART011_RIMIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pl011_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl011_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_amba_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %10, %struct.uart_amba_port** %5, align 8
  %11 = load i32, i32* @AMBA_ISR_PASS_LIMIT, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %17 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UART011_MIS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readw(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %86, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @UART011_TXIS, align 4
  %29 = load i32, i32* @UART011_RTIS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UART011_RXIS, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %27, %33
  %35 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %36 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UART011_ICR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writew(i32 %34, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @UART011_RTIS, align 4
  %44 = load i32, i32* @UART011_RXIS, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %50 = call i32 @pl011_rx_chars(%struct.uart_amba_port* %49)
  br label %51

51:                                               ; preds = %48, %26
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @UART011_DSRMIS, align 4
  %54 = load i32, i32* @UART011_DCDMIS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @UART011_CTSMIS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UART011_RIMIS, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %52, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %64 = call i32 @pl011_modem_status(%struct.uart_amba_port* %63)
  br label %65

65:                                               ; preds = %62, %51
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @UART011_TXIS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %72 = call i32 @pl011_tx_chars(%struct.uart_amba_port* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, -1
  store i32 %75, i32* %7, align 4
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %89

78:                                               ; preds = %73
  %79 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %80 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UART011_MIS, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readw(i64 %84)
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %26, label %89

89:                                               ; preds = %86, %77
  store i32 1, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %2
  %91 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %92 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @IRQ_RETVAL(i32 %95)
  ret i32 %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @pl011_rx_chars(%struct.uart_amba_port*) #1

declare dso_local i32 @pl011_modem_status(%struct.uart_amba_port*) #1

declare dso_local i32 @pl011_tx_chars(%struct.uart_amba_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
