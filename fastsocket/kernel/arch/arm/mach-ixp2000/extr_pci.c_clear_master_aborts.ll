; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_clear_master_aborts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_clear_master_aborts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP2000_PCI_CONTROL = common dso_local global i32* null, align 8
@IXP2000_PCI_CMDSTAT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_master_aborts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @local_irq_save(i64 %3)
  %5 = load i32*, i32** @IXP2000_PCI_CONTROL, align 8
  %6 = load i32, i32* %5, align 4
  store volatile i32 %6, i32* %1, align 4
  %7 = load volatile i32, i32* %1, align 4
  %8 = and i32 %7, 288
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32*, i32** @IXP2000_PCI_CONTROL, align 8
  %12 = load volatile i32, i32* %1, align 4
  %13 = call i32 @ixp2000_reg_wrb(i32* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32*, i32** @IXP2000_PCI_CMDSTAT, align 8
  %16 = load i32, i32* %15, align 4
  store volatile i32 %16, i32* %1, align 4
  %17 = load volatile i32, i32* %1, align 4
  %18 = and i32 %17, 536870912
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %25, %20
  %22 = load volatile i32, i32* %1, align 4
  %23 = and i32 %22, 536870912
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** @IXP2000_PCI_CMDSTAT, align 8
  %27 = load volatile i32, i32* %1, align 4
  %28 = call i32 @ixp2000_reg_write(i32* %26, i32 %27)
  %29 = load i32*, i32** @IXP2000_PCI_CMDSTAT, align 8
  %30 = load i32, i32* %29, align 4
  store volatile i32 %30, i32* %1, align 4
  br label %21

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @local_irq_restore(i64 %33)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ixp2000_reg_wrb(i32*, i32) #1

declare dso_local i32 @ixp2000_reg_write(i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
