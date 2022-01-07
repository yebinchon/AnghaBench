; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_match_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_match_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_match_port(%struct.uart_port* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %55 [
    i32 129, label %18
    i32 132, label %27
    i32 131, label %46
    i32 130, label %46
    i32 134, label %46
    i32 128, label %46
    i32 133, label %46
  ]

18:                                               ; preds = %14
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %14
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi i1 [ false, %27 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %14, %14, %14, %14, %14
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %46, %43, %18, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
