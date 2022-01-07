; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-microdev/extr_irq.c_disable_microdev_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-microdev/extr_irq.c_disable_microdev_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NUM_EXTERNAL_IRQS = common dso_local global i32 0, align 4
@fpgaIrqTable = common dso_local global %struct.TYPE_2__* null, align 8
@MICRODEV_FPGA_INTDSB_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @disable_microdev_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_microdev_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NUM_EXTERNAL_IRQS, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpgaIrqTable, align 8
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %28

17:                                               ; preds = %8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpgaIrqTable, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @MICRODEV_FPGA_INTC_MASK(i32 %24)
  %26 = load i32, i32* @MICRODEV_FPGA_INTDSB_REG, align 4
  %27 = call i32 @ctrl_outl(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %17, %16, %7
  ret void
}

declare dso_local i32 @ctrl_outl(i32, i32) #1

declare dso_local i32 @MICRODEV_FPGA_INTC_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
