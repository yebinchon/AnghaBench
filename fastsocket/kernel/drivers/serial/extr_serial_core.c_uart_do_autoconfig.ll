; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_do_autoconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_do_autoconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.tty_port, %struct.uart_port* }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*)* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@UART_CONFIG_TYPE = common dso_local global i32 0, align 4
@UPF_AUTO_IRQ = common dso_local global i32 0, align 4
@UART_CONFIG_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_state*)* @uart_do_autoconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_do_autoconfig(%struct.uart_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_state* %0, %struct.uart_state** %3, align 8
  %8 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %9 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %8, i32 0, i32 1
  %10 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  store %struct.uart_port* %10, %struct.uart_port** %4, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %12 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %5, align 8
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %21 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %77

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %31 = call i32 @tty_port_users(%struct.tty_port* %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  %34 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %35 = call i32 @uart_shutdown(%struct.uart_state* %34)
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PORT_UNKNOWN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %45, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = call i32 %46(%struct.uart_port* %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* @UART_CONFIG_TYPE, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @UPF_AUTO_IRQ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @UART_CONFIG_IRQ, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %49
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %65, align 8
  %67 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 %66(%struct.uart_port* %67, i32 %68)
  %70 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %71 = call i32 @uart_startup(%struct.uart_state* %70, i32 1)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %61, %27
  %73 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %74 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %24, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @tty_port_users(%struct.tty_port*) #1

declare dso_local i32 @uart_shutdown(%struct.uart_state*) #1

declare dso_local i32 @uart_startup(%struct.uart_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
