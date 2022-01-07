; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@KS8695_IRQ_UART_TX = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@IRQF_NOAUTOEN = common dso_local global i32 0, align 4
@ks8695uart_tx_chars = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"UART TX\00", align 1
@KS8695_IRQ_UART_RX = common dso_local global i32 0, align 4
@ks8695uart_rx_chars = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"UART RX\00", align 1
@KS8695_IRQ_UART_LINE_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"UART LineStatus\00", align 1
@KS8695_IRQ_UART_MODEM_STATUS = common dso_local global i32 0, align 4
@ks8695uart_modem_status = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"UART ModemStatus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ks8695uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %5 = load i32, i32* @KS8695_IRQ_UART_TX, align 4
  %6 = load i32, i32* @IRQF_VALID, align 4
  %7 = load i32, i32* @IRQF_NOAUTOEN, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @set_irq_flags(i32 %5, i32 %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call i32 @tx_enable(%struct.uart_port* %10, i32 0)
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call i32 @rx_enable(%struct.uart_port* %12, i32 1)
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = call i32 @ms_enable(%struct.uart_port* %14, i32 1)
  %16 = load i32, i32* @KS8695_IRQ_UART_TX, align 4
  %17 = load i32, i32* @ks8695uart_tx_chars, align 4
  %18 = load i32, i32* @IRQF_DISABLED, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = call i32 @request_irq(i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.uart_port* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %64

24:                                               ; preds = %1
  %25 = load i32, i32* @KS8695_IRQ_UART_RX, align 4
  %26 = load i32, i32* @ks8695uart_rx_chars, align 4
  %27 = load i32, i32* @IRQF_DISABLED, align 4
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = call i32 @request_irq(i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.uart_port* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %60

33:                                               ; preds = %24
  %34 = load i32, i32* @KS8695_IRQ_UART_LINE_STATUS, align 4
  %35 = load i32, i32* @ks8695uart_rx_chars, align 4
  %36 = load i32, i32* @IRQF_DISABLED, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = call i32 @request_irq(i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.uart_port* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %56

42:                                               ; preds = %33
  %43 = load i32, i32* @KS8695_IRQ_UART_MODEM_STATUS, align 4
  %44 = load i32, i32* @ks8695uart_modem_status, align 4
  %45 = load i32, i32* @IRQF_DISABLED, align 4
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = call i32 @request_irq(i32 %43, i32 %44, i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.uart_port* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %66

52:                                               ; preds = %50
  %53 = load i32, i32* @KS8695_IRQ_UART_LINE_STATUS, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = call i32 @free_irq(i32 %53, %struct.uart_port* %54)
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* @KS8695_IRQ_UART_RX, align 4
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.uart_port* %58)
  br label %60

60:                                               ; preds = %56, %32
  %61 = load i32, i32* @KS8695_IRQ_UART_TX, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = call i32 @free_irq(i32 %61, %struct.uart_port* %62)
  br label %64

64:                                               ; preds = %60, %23
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %51
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @set_irq_flags(i32, i32) #1

declare dso_local i32 @tx_enable(%struct.uart_port*, i32) #1

declare dso_local i32 @rx_enable(%struct.uart_port*, i32) #1

declare dso_local i32 @ms_enable(%struct.uart_port*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
