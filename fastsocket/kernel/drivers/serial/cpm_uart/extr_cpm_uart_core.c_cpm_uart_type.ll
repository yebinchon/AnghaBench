; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"CPM uart[%d]:uart_type\0A\00", align 1
@PORT_CPM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"CPM UART\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uart_port*)* @cpm_uart_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cpm_uart_type(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PORT_CPM, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* null
  ret i8* %13
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
