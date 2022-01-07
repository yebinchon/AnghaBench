; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_serial.c_serial_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_serial.c_serial_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_serial8250_port = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plat_serial8250_port*, i32, i32)* @serial_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_write_reg(%struct.plat_serial8250_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.plat_serial8250_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.plat_serial8250_port* %0, %struct.plat_serial8250_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %4, align 8
  %8 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.plat_serial8250_port*, %struct.plat_serial8250_port** %4, align 8
  %14 = getelementptr inbounds %struct.plat_serial8250_port, %struct.plat_serial8250_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i32 @__raw_writeb(i32 %12, i64 %18)
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
