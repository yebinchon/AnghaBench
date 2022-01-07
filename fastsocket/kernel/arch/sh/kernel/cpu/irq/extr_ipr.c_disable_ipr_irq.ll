; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/irq/extr_ipr.c_disable_ipr_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/irq/extr_ipr.c_disable_ipr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_data = type { i64, i32 }
%struct.TYPE_2__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @disable_ipr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_ipr_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_data*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ipr_data* @get_irq_chip_data(i32 %5)
  store %struct.ipr_data* %6, %struct.ipr_data** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.TYPE_2__* @get_ipr_desc(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load %struct.ipr_data*, %struct.ipr_data** %3, align 8
  %12 = getelementptr inbounds %struct.ipr_data, %struct.ipr_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @__raw_readw(i64 %16)
  %18 = load %struct.ipr_data*, %struct.ipr_data** %3, align 8
  %19 = getelementptr inbounds %struct.ipr_data, %struct.ipr_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 15, %20
  %22 = xor i32 65535, %21
  %23 = and i32 %17, %22
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @__raw_writew(i32 %23, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @__raw_readw(i64 %26)
  ret void
}

declare dso_local %struct.ipr_data* @get_irq_chip_data(i32) #1

declare dso_local %struct.TYPE_2__* @get_ipr_desc(i32) #1

declare dso_local i32 @__raw_writew(i32, i64) #1

declare dso_local i32 @__raw_readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
