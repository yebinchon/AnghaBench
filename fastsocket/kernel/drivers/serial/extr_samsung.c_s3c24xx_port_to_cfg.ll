; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_port_to_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_port_to_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_uartcfg = type { i32 }
%struct.uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c2410_uartcfg* (%struct.uart_port*)* @s3c24xx_port_to_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.s3c2410_uartcfg*, align 8
  %3 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.s3c2410_uartcfg* null, %struct.s3c2410_uartcfg** %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.s3c2410_uartcfg*
  store %struct.s3c2410_uartcfg* %15, %struct.s3c2410_uartcfg** %2, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %2, align 8
  ret %struct.s3c2410_uartcfg* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
