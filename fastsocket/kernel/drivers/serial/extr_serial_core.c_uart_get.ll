; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.TYPE_2__*, %struct.tty_port }
%struct.TYPE_2__ = type { i32 }
%struct.tty_port = type { i32, i32 }
%struct.uart_driver = type { %struct.uart_state* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@UPF_DEAD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uart_state* (%struct.uart_driver*, i32)* @uart_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uart_state* @uart_get(%struct.uart_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.uart_driver*, %struct.uart_driver** %4, align 8
  %10 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %9, i32 0, i32 0
  %11 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i64 %13
  store %struct.uart_state* %14, %struct.uart_state** %6, align 8
  %15 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %16 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %15, i32 0, i32 1
  store %struct.tty_port* %16, %struct.tty_port** %7, align 8
  %17 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %18 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %26 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %30 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  %35 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UPF_DEAD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33, %24
  %43 = load i32, i32* @ENXIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %47

45:                                               ; preds = %33
  %46 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  store %struct.uart_state* %46, %struct.uart_state** %3, align 8
  br label %58

47:                                               ; preds = %42
  %48 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %49 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %53 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  br label %55

55:                                               ; preds = %47, %21
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.uart_state* @ERR_PTR(i32 %56)
  store %struct.uart_state* %57, %struct.uart_state** %3, align 8
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  ret %struct.uart_state* %59
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.uart_state* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
