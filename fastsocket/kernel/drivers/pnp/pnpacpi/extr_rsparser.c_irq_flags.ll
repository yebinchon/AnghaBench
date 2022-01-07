; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_irq_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_irq_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_LEVEL_SENSITIVE = common dso_local global i32 0, align 4
@ACPI_ACTIVE_LOW = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWLEVEL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHLEVEL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWEDGE = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHEDGE = common dso_local global i32 0, align 4
@ACPI_SHARED = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_SHAREABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @irq_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_flags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ACPI_LEVEL_SENSITIVE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @IORESOURCE_IRQ_LOWLEVEL, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @IORESOURCE_IRQ_HIGHLEVEL, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ACPI_ACTIVE_LOW, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @IORESOURCE_IRQ_LOWEDGE, align 4
  store i32 %25, i32* %7, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @IORESOURCE_IRQ_HIGHEDGE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ACPI_SHARED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @IORESOURCE_IRQ_SHAREABLE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
