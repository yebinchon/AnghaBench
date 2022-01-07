; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_serial.c_serial_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_serial.c_serial_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_serial8250_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plat_serial8250_port*, i32)* @serial_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_read_reg(%struct.plat_serial8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.plat_serial8250_port*, align 8
  %4 = alloca i32, align 4
  store %struct.plat_serial8250_port* %0, %struct.plat_serial8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %6 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %3, align 8
  %11 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IO_ADDRESS(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i64 @__raw_readl(i64 %16)
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @IO_ADDRESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
