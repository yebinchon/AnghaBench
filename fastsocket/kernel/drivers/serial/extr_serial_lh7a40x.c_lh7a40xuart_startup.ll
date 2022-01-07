; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_lh7a40x.c_lh7a40xuart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_port_lh7a40x = type { i32 }

@lh7a40xuart_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"serial_lh7a40x\00", align 1
@UART_R_STATUS = common dso_local global i32 0, align 4
@UART_R_CON = common dso_local global i32 0, align 4
@UARTEN = common dso_local global i32 0, align 4
@SIRDIS = common dso_local global i32 0, align 4
@UART_R_INTEN = common dso_local global i32 0, align 4
@RxTimeoutInt = common dso_local global i32 0, align 4
@RxInt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @lh7a40xuart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lh7a40xuart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @lh7a40xuart_int, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call i32 @request_irq(i32 %7, i32 %8, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = load i32, i32* @UART_R_STATUS, align 4
  %18 = call i32 @UR(%struct.uart_port* %16, i32 %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = bitcast %struct.uart_port* %19 to %struct.uart_port_lh7a40x*
  %21 = getelementptr inbounds %struct.uart_port_lh7a40x, %struct.uart_port_lh7a40x* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = load i32, i32* @UART_R_CON, align 4
  %24 = load i32, i32* @UARTEN, align 4
  %25 = load i32, i32* @SIRDIS, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @BIT_SET(%struct.uart_port* %22, i32 %23, i32 %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = load i32, i32* @UART_R_INTEN, align 4
  %30 = load i32, i32* @RxTimeoutInt, align 4
  %31 = load i32, i32* @RxInt, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @BIT_SET(%struct.uart_port* %28, i32 %29, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %15, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @UR(%struct.uart_port*, i32) #1

declare dso_local i32 @BIT_SET(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
