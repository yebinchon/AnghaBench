; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sa1100_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@sa1100_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sa11x0-uart\00", align 1
@UTCR3_RXE = common dso_local global i32 0, align 4
@UTCR3_TXE = common dso_local global i32 0, align 4
@UTCR3_RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sa1100_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sa1100_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.sa1100_port*
  store %struct.sa1100_port* %7, %struct.sa1100_port** %4, align 8
  %8 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %9 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @sa1100_int, align 4
  %13 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %14 = call i32 @request_irq(i32 %11, i32 %12, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.sa1100_port* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %21 = call i32 @UART_PUT_UTSR0(%struct.sa1100_port* %20, i32 -1)
  %22 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %23 = load i32, i32* @UTCR3_RXE, align 4
  %24 = load i32, i32* @UTCR3_TXE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UTCR3_RIE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @UART_PUT_UTCR3(%struct.sa1100_port* %22, i32 %27)
  %29 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %30 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %34 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %33, i32 0, i32 0
  %35 = call i32 @sa1100_enable_ms(%struct.TYPE_2__* %34)
  %36 = load %struct.sa1100_port*, %struct.sa1100_port** %4, align 8
  %37 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %19, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.sa1100_port*) #1

declare dso_local i32 @UART_PUT_UTSR0(%struct.sa1100_port*, i32) #1

declare dso_local i32 @UART_PUT_UTCR3(%struct.sa1100_port*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @sa1100_enable_ms(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
