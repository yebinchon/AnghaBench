; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_pci.c_ks8695_pci_setupconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_pci.c_ks8695_pci_setupconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBCA_ENABLE = common dso_local global i32 0, align 4
@KS8695_PCI_VA = common dso_local global i64 0, align 8
@KS8695_PBCA = common dso_local global i64 0, align 8
@PBCA_TYPE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ks8695_pci_setupconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_pci_setupconfig(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @PBCA_ENABLE, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, -4
  %11 = or i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @PCI_SLOT(i32 %13)
  %15 = shl i32 %14, 11
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @PCI_FUNC(i32 %19)
  %21 = shl i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 16
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @KS8695_PCI_VA, align 8
  %35 = load i64, i64* @KS8695_PBCA, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @__raw_writel(i64 %33, i64 %36)
  br label %46

38:                                               ; preds = %3
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @PBCA_TYPE1, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @KS8695_PCI_VA, align 8
  %43 = load i64, i64* @KS8695_PBCA, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @__raw_writel(i64 %41, i64 %44)
  br label %46

46:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
