; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.h_pmz_get_port_A.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.h_pmz_get_port_A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32, %struct.uart_pmac_port* }

@PMACZILOG_FLAG_IS_CHANNEL_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uart_pmac_port* (%struct.uart_pmac_port*)* @pmz_get_port_A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uart_pmac_port* @pmz_get_port_A(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  %4 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @PMACZILOG_FLAG_IS_CHANNEL_A, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  store %struct.uart_pmac_port* %11, %struct.uart_pmac_port** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %13, i32 0, i32 1
  %15 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %14, align 8
  store %struct.uart_pmac_port* %15, %struct.uart_pmac_port** %2, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  ret %struct.uart_pmac_port* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
