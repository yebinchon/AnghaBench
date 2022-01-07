; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@AMBA_ISR_PASS_LIMIT = common dso_local global i32 0, align 4
@UART010_IIR = common dso_local global i64 0, align 8
@UART010_IIR_RTIS = common dso_local global i32 0, align 4
@UART010_IIR_RIS = common dso_local global i32 0, align 4
@UART010_IIR_MIS = common dso_local global i32 0, align 4
@UART010_IIR_TIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pl010_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl010_int(i32 %0, i8* %1) #0 {
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
  %20 = load i64, i64* @UART010_IIR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %65, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @UART010_IIR_RTIS, align 4
  %29 = load i32, i32* @UART010_IIR_RIS, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %35 = call i32 @pl010_rx_chars(%struct.uart_amba_port* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @UART010_IIR_MIS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %43 = call i32 @pl010_modem_status(%struct.uart_amba_port* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @UART010_IIR_TIS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %51 = call i32 @pl010_tx_chars(%struct.uart_amba_port* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %74

57:                                               ; preds = %52
  %58 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %59 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UART010_IIR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readb(i64 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @UART010_IIR_RTIS, align 4
  %68 = load i32, i32* @UART010_IIR_RIS, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @UART010_IIR_TIS, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %66, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %26, label %74

74:                                               ; preds = %65, %56
  store i32 1, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %77 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @IRQ_RETVAL(i32 %80)
  ret i32 %81
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @pl010_rx_chars(%struct.uart_amba_port*) #1

declare dso_local i32 @pl010_modem_status(%struct.uart_amba_port*) #1

declare dso_local i32 @pl010_tx_chars(%struct.uart_amba_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
