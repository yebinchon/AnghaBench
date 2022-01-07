; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }

@UART_IIR = common dso_local global i64 0, align 8
@IIR_MASK = common dso_local global i32 0, align 4
@IIR_RIS = common dso_local global i8 0, align 1
@IIR_TIS = common dso_local global i8 0, align 1
@IIR_MIS = common dso_local global i8 0, align 1
@UART_FR = common dso_local global i64 0, align 8
@FR_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @netx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UART_IIR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @IIR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  br label %23

23:                                               ; preds = %70, %2
  %24 = load i8, i8* %7, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %23
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @IIR_RIS, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = call i32 @netx_rxint(%struct.uart_port* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @IIR_TIS, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = call i32 @netx_txint(%struct.uart_port* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @IIR_MIS, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %46
  %54 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UART_FR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  %60 = load i32, i32* @FR_CTS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %65 = call i32 @uart_handle_cts_change(%struct.uart_port* %64, i32 1)
  br label %69

66:                                               ; preds = %53
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = call i32 @uart_handle_cts_change(%struct.uart_port* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %46
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UART_IIR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 0, i64 %75)
  %77 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UART_IIR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readl(i64 %81)
  %83 = load i32, i32* @IIR_MASK, align 4
  %84 = and i32 %82, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %7, align 1
  br label %23

86:                                               ; preds = %23
  %87 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 0
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netx_rxint(%struct.uart_port*) #1

declare dso_local i32 @netx_txint(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
