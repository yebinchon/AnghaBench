; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_cpm_port = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"CPM uart[%d]:break ctrl, break_state: %d\0A\00", align 1
@CPM_CR_STOP_TX = common dso_local global i32 0, align 4
@CPM_CR_RESTART_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @cpm_uart_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpm_uart_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_cpm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_cpm_port*
  store %struct.uart_cpm_port* %7, %struct.uart_cpm_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %17 = load i32, i32* @CPM_CR_STOP_TX, align 4
  %18 = call i32 @cpm_line_cr_cmd(%struct.uart_cpm_port* %16, i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %21 = load i32, i32* @CPM_CR_RESTART_TX, align 4
  %22 = call i32 @cpm_line_cr_cmd(%struct.uart_cpm_port* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @cpm_line_cr_cmd(%struct.uart_cpm_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
