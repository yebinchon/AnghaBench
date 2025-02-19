; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sci_port = type { i32 (%struct.uart_port*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_startup(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sci_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %4)
  store %struct.sci_port* %5, %struct.sci_port** %3, align 8
  %6 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %7 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %6, i32 0, i32 0
  %8 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %7, align 8
  %9 = icmp ne i32 (%struct.uart_port*)* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %12 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %11, i32 0, i32 0
  %13 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %12, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = call i32 %13(%struct.uart_port* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %18 = call i32 @sci_request_irq(%struct.sci_port* %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = call i32 @sci_start_tx(%struct.uart_port* %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = call i32 @sci_start_rx(%struct.uart_port* %21, i32 1)
  ret i32 0
}

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @sci_request_irq(%struct.sci_port*) #1

declare dso_local i32 @sci_start_tx(%struct.uart_port*) #1

declare dso_local i32 @sci_start_rx(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
