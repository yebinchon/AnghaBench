; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-vr41xx.c_set_pci_configuration_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-vr41xx.c_set_pci_configuration_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PCICONFAREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32, i32)* @set_pci_configuration_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pci_configuration_address(i8 zeroext %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PCI_SLOT(i32 %12)
  %14 = icmp ult i32 %13, 11
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %11
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @PCI_SLOT(i32 %22)
  %24 = shl i32 1, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PCI_FUNC(i32 %25)
  %27 = shl i32 %26, 8
  %28 = or i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 252
  %31 = or i32 %28, %30
  %32 = load i32, i32* @PCICONFAREG, align 4
  %33 = call i32 @writel(i32 %31, i32 %32)
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 16
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 8
  %47 = or i32 %43, %46
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 252
  %50 = or i32 %47, %49
  %51 = or i32 %50, 1
  %52 = load i32, i32* @PCICONFAREG, align 4
  %53 = call i32 @writel(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %40, %21
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %37, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
