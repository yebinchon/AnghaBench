; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-irq.c_enable_macepci_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip32/extr_ip32-irq.c_enable_macepci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MACEPCI_SCSI0_IRQ = common dso_local global i64 0, align 8
@macepci_mask = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_5__* null, align 8
@CRIME_IRQ_BASE = common dso_local global i32 0, align 4
@crime_mask = common dso_local global i32 0, align 4
@crime = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_macepci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_macepci_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = load i64, i64* @MACEPCI_SCSI0_IRQ, align 8
  %6 = sub nsw i64 %4, %5
  %7 = call i32 @MACEPCI_CONTROL_INT(i64 %6)
  %8 = load i32, i32* @macepci_mask, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @macepci_mask, align 4
  %10 = load i32, i32* @macepci_mask, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mace, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @CRIME_IRQ_BASE, align 4
  %16 = sub i32 %14, %15
  %17 = shl i32 1, %16
  %18 = load i32, i32* @crime_mask, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @crime_mask, align 4
  %20 = load i32, i32* @crime_mask, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @crime, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @MACEPCI_CONTROL_INT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
