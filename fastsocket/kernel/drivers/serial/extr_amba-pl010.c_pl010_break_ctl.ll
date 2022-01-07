; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@UART010_LCRH = common dso_local global i64 0, align 8
@UART01x_LCRH_BRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @pl010_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_amba_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %9, %struct.uart_amba_port** %5, align 8
  %10 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UART010_LCRH, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readb(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @UART01x_LCRH_BRK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @UART01x_LCRH_BRK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %36 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UART010_LCRH, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  %42 = load %struct.uart_amba_port*, %struct.uart_amba_port** %5, align 8
  %43 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
