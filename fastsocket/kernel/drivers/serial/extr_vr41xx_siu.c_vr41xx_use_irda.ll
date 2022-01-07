; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_vr41xx_use_irda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_vr41xx_use_irda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@siu_uart_ports = common dso_local global %struct.uart_port* null, align 8
@SIUIRSEL = common dso_local global i32 0, align 4
@FIR_USE_IRDA = common dso_local global i64 0, align 8
@IRUSESEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_use_irda(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** @siu_uart_ports, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i64 0
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = load i32, i32* @SIUIRSEL, align 4
  %14 = call i32 @siu_read(%struct.uart_port* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @FIR_USE_IRDA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @IRUSESEL, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @IRUSESEL, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = load i32, i32* @SIUIRSEL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @siu_write(%struct.uart_port* %28, i32 %29, i32 %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i32 @siu_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
