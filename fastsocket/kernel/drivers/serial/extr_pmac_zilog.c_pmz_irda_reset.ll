; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_irda_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_irda_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32* }

@DTR = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*)* @pmz_irda_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_irda_reset(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  %3 = load i32, i32* @DTR, align 4
  %4 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @R5, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %3
  store i32 %10, i32* %8, align 4
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %12 = load i64, i64* @R5, align 8
  %13 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @R5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @write_zsreg(%struct.uart_pmac_port* %11, i64 %12, i32 %18)
  %20 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %21 = call i32 @zssync(%struct.uart_pmac_port* %20)
  %22 = call i32 @mdelay(i32 110)
  %23 = load i32, i32* @DTR, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %26 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @R5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %33 = load i64, i64* @R5, align 8
  %34 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @R5, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write_zsreg(%struct.uart_pmac_port* %32, i64 %33, i32 %39)
  %41 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %42 = call i32 @zssync(%struct.uart_pmac_port* %41)
  %43 = call i32 @mdelay(i32 10)
  ret void
}

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
