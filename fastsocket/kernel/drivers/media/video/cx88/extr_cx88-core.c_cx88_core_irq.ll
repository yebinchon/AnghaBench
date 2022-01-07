; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_core_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_core_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32 }

@PCI_INT_IR_SMPINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"irq pci\00", align 1
@cx88_pci_irqs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_core_irq(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PCI_INT_IR_SMPINT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %12 = call i32 @cx88_ir_irq(%struct.cx88_core* %11)
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %20 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @cx88_pci_irqs, align 4
  %23 = load i32, i32* @cx88_pci_irqs, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %27 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cx88_print_irqbits(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @cx88_ir_irq(%struct.cx88_core*) #1

declare dso_local i32 @cx88_print_irqbits(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
