; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UCR2 = common dso_local global i64 0, align 8
@UCR2_CTS = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @imx_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.imx_port*, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.imx_port*
  store %struct.imx_port* %8, %struct.imx_port** %5, align 8
  %9 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %10 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UCR2, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl(i64 %14)
  %16 = load i64, i64* @UCR2_CTS, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TIOCM_RTS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* @UCR2_CTS, align 8
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.imx_port*, %struct.imx_port** %5, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UCR2, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i64 %28, i64 %34)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
