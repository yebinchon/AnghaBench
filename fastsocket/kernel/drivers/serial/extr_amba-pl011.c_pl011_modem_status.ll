; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_FR_MODEM_ANY = common dso_local global i32 0, align 4
@UART01x_FR_DCD = common dso_local global i32 0, align 4
@UART01x_FR_DSR = common dso_local global i32 0, align 4
@UART01x_FR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl011_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_modem_status(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  %5 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UART01x_FR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readw(i64 %10)
  %12 = load i32, i32* @UART01x_FR_MODEM_ANY, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %16 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %69

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @UART01x_FR_DCD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %31, i32 0, i32 1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @UART01x_FR_DCD, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @UART01x_FR_DSR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @UART01x_FR_CTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %56 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %55, i32 0, i32 1
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @UART01x_FR_CTS, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i32 @wake_up_interruptible(i32* %67)
  br label %69

69:                                               ; preds = %61, %24
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
