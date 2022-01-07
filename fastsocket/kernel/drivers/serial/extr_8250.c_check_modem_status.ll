; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_modem_status(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = load i32, i32* @UART_MSR, align 4
  %6 = call i32 @serial_in(%struct.uart_8250_port* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %1
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UART_IER_MSI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %18
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %87

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @UART_MSR_TERI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @UART_MSR_DDSR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %49, i32 0, i32 2
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @UART_MSR_DSR, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @uart_handle_dsr_change(%struct.TYPE_10__* %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @UART_MSR_DDCD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %61, i32 0, i32 2
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @UART_MSR_DCD, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @uart_handle_dcd_change(%struct.TYPE_10__* %62, i32 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @UART_MSR_DCTS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %73, i32 0, i32 2
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @UART_MSR_CTS, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @uart_handle_cts_change(%struct.TYPE_10__* %74, i32 %77)
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = call i32 @wake_up_interruptible(i32* %85)
  br label %87

87:                                               ; preds = %79, %25, %18, %1
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @uart_handle_dsr_change(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
