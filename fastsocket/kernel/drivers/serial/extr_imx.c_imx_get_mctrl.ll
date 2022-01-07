; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@USR1 = common dso_local global i64 0, align 8
@USR1_RTSS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i64 0, align 8
@UCR2_CTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @imx_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.imx_port*
  store %struct.imx_port* %6, %struct.imx_port** %3, align 8
  %7 = load i32, i32* @TIOCM_DSR, align 4
  %8 = load i32, i32* @TIOCM_CAR, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %11 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USR1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load i32, i32* @USR1_RTSS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @TIOCM_CTS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %26 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCR2, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = load i32, i32* @UCR2_CTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* @TIOCM_RTS, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
