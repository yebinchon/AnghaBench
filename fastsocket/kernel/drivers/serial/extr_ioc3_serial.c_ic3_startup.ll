; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ioc3_port = type { %struct.uart_port*, %struct.ioc3_card* }
%struct.ioc3_card = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ic3_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ic3_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ioc3_port*, align 8
  %6 = alloca %struct.ioc3_card*, align 8
  %7 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = icmp ne %struct.uart_port* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @NOT_PROGRESS()
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = call %struct.ioc3_port* @get_ioc3_port(%struct.uart_port* %15)
  store %struct.ioc3_port* %16, %struct.ioc3_port** %5, align 8
  %17 = load %struct.ioc3_port*, %struct.ioc3_port** %5, align 8
  %18 = icmp ne %struct.ioc3_port* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = call i32 (...) @NOT_PROGRESS()
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %14
  %24 = load %struct.ioc3_port*, %struct.ioc3_port** %5, align 8
  %25 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %24, i32 0, i32 1
  %26 = load %struct.ioc3_card*, %struct.ioc3_card** %25, align 8
  store %struct.ioc3_card* %26, %struct.ioc3_card** %6, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = load %struct.ioc3_port*, %struct.ioc3_port** %5, align 8
  %29 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %28, i32 0, i32 0
  store %struct.uart_port* %27, %struct.uart_port** %29, align 8
  %30 = load %struct.ioc3_card*, %struct.ioc3_card** %6, align 8
  %31 = icmp ne %struct.ioc3_card* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = call i32 (...) @NOT_PROGRESS()
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %23
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = call i32 @ic3_startup_local(%struct.uart_port* %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %32, %19, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @NOT_PROGRESS(...) #1

declare dso_local %struct.ioc3_port* @get_ioc3_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ic3_startup_local(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
