; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_extint.c_demux_eic_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_extint.c_demux_eic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.eic* }
%struct.eic = type { i64 }

@ISR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @demux_eic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demux_eic_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.eic*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 0
  %11 = load %struct.eic*, %struct.eic** %10, align 8
  store %struct.eic* %11, %struct.eic** %5, align 8
  %12 = load %struct.eic*, %struct.eic** %5, align 8
  %13 = load i32, i32* @ISR, align 4
  %14 = call i64 @eic_readl(%struct.eic* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.eic*, %struct.eic** %5, align 8
  %17 = load i32, i32* @IMR, align 4
  %18 = call i64 @eic_readl(%struct.eic* %16, i32 %17)
  %19 = and i64 %15, %18
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %23, %2
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @fls(i64 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = load %struct.eic*, %struct.eic** %5, align 8
  %36 = getelementptr inbounds %struct.eic, %struct.eic* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @generic_handle_irq(i64 %38)
  br label %20

40:                                               ; preds = %20
  ret void
}

declare dso_local i64 @eic_readl(%struct.eic*, i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @generic_handle_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
