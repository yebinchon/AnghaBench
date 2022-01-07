; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ioc4_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IOC4_SHADOW_DCD = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@IOC4_SHADOW_DR = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@IOC4_SHADOW_CTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ic4_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ic4_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ioc4_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %7, i32 0)
  store %struct.ioc4_port* %8, %struct.ioc4_port** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call i32 @port_is_active(%struct.ioc4_port* %9, %struct.uart_port* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %16 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @readl(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IOC4_SHADOW_DCD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @TIOCM_CAR, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %14
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @IOC4_SHADOW_DR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @TIOCM_DSR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IOC4_SHADOW_CTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @TIOCM_CTS, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.ioc4_port* @get_ioc4_port(%struct.uart_port*, i32) #1

declare dso_local i32 @port_is_active(%struct.ioc4_port*, %struct.uart_port*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
