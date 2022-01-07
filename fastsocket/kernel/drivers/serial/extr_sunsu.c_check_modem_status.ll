; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsu_port = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsu_port*)* @check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_modem_status(%struct.uart_sunsu_port* %0) #0 {
  %2 = alloca %struct.uart_sunsu_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_sunsu_port* %0, %struct.uart_sunsu_port** %2, align 8
  %4 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %5 = load i32, i32* @UART_MSR, align 4
  %6 = call i32 @serial_in(%struct.uart_sunsu_port* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %68

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @UART_MSR_TERI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @UART_MSR_DDSR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @UART_MSR_DDCD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %42, i32 0, i32 0
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @UART_MSR_DCD, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @UART_MSR_DCTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %54, i32 0, i32 0
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @UART_MSR_CTS, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @wake_up_interruptible(i32* %66)
  br label %68

68:                                               ; preds = %60, %11
  ret void
}

declare dso_local i32 @serial_in(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
