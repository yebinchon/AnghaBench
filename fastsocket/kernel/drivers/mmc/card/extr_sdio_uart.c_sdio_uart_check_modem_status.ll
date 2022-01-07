; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*)* @sdio_uart_check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_check_modem_status(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %5 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %6 = load i32, i32* @UART_MSR, align 4
  %7 = call i32 @sdio_in(%struct.sdio_uart_port* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %105

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UART_MSR_TERI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @UART_MSR_DDSR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %31 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @UART_MSR_DDCD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @UART_MSR_DCTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %105

51:                                               ; preds = %46
  %52 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CRTSCTS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %51
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @UART_MSR_CTS, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %4, align 4
  %71 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %72 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %67
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %82 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %86 = call i32 @sdio_uart_start_tx(%struct.sdio_uart_port* %85)
  %87 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %88 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @tty_wakeup(%struct.TYPE_6__* %89)
  br label %91

91:                                               ; preds = %80, %77
  br label %103

92:                                               ; preds = %67
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %97 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %101 = call i32 @sdio_uart_stop_tx(%struct.sdio_uart_port* %100)
  br label %102

102:                                              ; preds = %95, %92
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %51
  br label %105

105:                                              ; preds = %12, %104, %46
  ret void
}

declare dso_local i32 @sdio_in(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_start_tx(%struct.sdio_uart_port*) #1

declare dso_local i32 @tty_wakeup(%struct.TYPE_6__*) #1

declare dso_local i32 @sdio_uart_stop_tx(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
