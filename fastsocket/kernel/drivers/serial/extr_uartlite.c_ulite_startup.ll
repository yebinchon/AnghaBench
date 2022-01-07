; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_uartlite.c_ulite_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_uartlite.c_ulite_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }

@ulite_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"uartlite\00", align 1
@ULITE_CONTROL_RST_RX = common dso_local global i32 0, align 4
@ULITE_CONTROL_RST_TX = common dso_local global i32 0, align 4
@ULITE_CONTROL = common dso_local global i64 0, align 8
@ULITE_CONTROL_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ulite_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ulite_isr, align 4
  %9 = load i32, i32* @IRQF_SHARED, align 4
  %10 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call i32 @request_irq(i32 %7, i32 %8, i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load i32, i32* @ULITE_CONTROL_RST_RX, align 4
  %20 = load i32, i32* @ULITE_CONTROL_RST_TX, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ULITE_CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writeb(i32 %21, i64 %26)
  %28 = load i32, i32* @ULITE_CONTROL_IE, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ULITE_CONTROL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %28, i64 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %18, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
